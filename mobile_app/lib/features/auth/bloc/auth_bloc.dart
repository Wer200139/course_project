import 'dart:async';
import 'dart:io';

import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/managers/notification_manager/notification_manager.dart';
import 'package:clokwise/common/managers/shared_preferences_manager/shared_preferences_manager.dart';
import 'package:clokwise/common/utils/vars.dart';
import 'package:clokwise/features/repositories/auth/auth_repository.dart';
import 'package:clokwise/features/repositories/auth/models/login_model.dart';
import 'package:clokwise/features/repositories/auth/models/sign_up_model.dart';
import 'package:clokwise/features/repositories/auth/requests/create_device_request.dart';
import 'package:clokwise/features/repositories/auth/requests/login_request.dart';
import 'package:clokwise/features/repositories/auth/requests/sign_up_request.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/chats/models/socket_message_model.dart';
import 'package:clokwise/features/repositories/user/models/user_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final SnackBarRepository _snackBarRepository;
  final ChatRepository _chatRepository;
  final firebaseMessaging = NotificationManager();

  late final StreamSubscription<SocketMessageModel> _chatMessageStreamSubscription;

  AuthBloc({
    required AuthRepository authRepository,
    required ChatRepository chatRepository,
    required SnackBarRepository snackBarRepository,
  })  : _authRepository = authRepository,
        _chatRepository = chatRepository,
        _snackBarRepository = snackBarRepository,
        super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => event.map(
        loginRequested: (event) => _onLoginRequested(event, emit),
        signUpRequested: (event) => _onSignUpRequested(event, emit),
        authCheckRequested: (event) => _onAuthCheckRequested(emit),
        confirmEmailRequested: (event) => _onConfirmEmailRequested(event, emit),
        resendCodeRequested: (event) => _onResendCodeRequested(event, emit),
        logoutRequested: (event) => _onLogoutRequested(emit),
        resetPasswordRequest: (event) => _onResetPasswordRequest(event, emit),
        sendNewPasswordRequest: (event) => _onSendPasswordRequest(event, emit),
        switchToCustomer: (event) => _onSwitchToCustomer(event, emit),
        switchToExpert: (event) => _onSwitchToExpert(event, emit),
        chatListUpdated: (event) => _onChatListUpdated(event, emit),
      ),
    );

    firebaseMessaging.titleCtlr.stream.listen((event) {
      _snackBarRepository.addPush(text: event);
    });

    _chatMessageStreamSubscription = _chatRepository.chatMessageStream.listen(
      (message) => add(
        AuthEvent.chatListUpdated(message: message),
      ),
    );
  }

  @override
  Future<void> close() async {
    _authRepository.dispose();
    _chatMessageStreamSubscription.cancel();

    return super.close();
  }

  Future<void> _onChatListUpdated(
    _ChatListUpdatedEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await state.mapOrNull(
        success: (state) async {
          int unreadMessagesCustomerCount = state.unreadMessagesCustomer ?? 0;
          int unreadMessagesExpertCount = state.unreadMessagesExpert ?? 0;

          ///TODO переделать в chatlistbloc

          if (event.message.type == SocketMessageType.newMessage) {
            if (state.user.id == event.message.message!.fromUser.id) {
              return;
            }

            final chat = await _chatRepository.getChat(chatId: event.message.chatId!);

            if (chat.recipientIsExpert!) {
              unreadMessagesCustomerCount++;
            } else {
              unreadMessagesExpertCount++;
            }
          }

          if (event.message.type == SocketMessageType.markChatAsRead &&
              (unreadMessagesExpertCount > 0 || unreadMessagesCustomerCount > 0)) {
            final chat = event.message.chat!;
            int unreadToDelete = chat.unreadMessagesCount;

            if (event.message.chat!.recipientIsExpert!) {
              unreadMessagesCustomerCount = unreadMessagesCustomerCount - unreadToDelete;
              print('Бу, испугался, давай посчитаем заказчика $unreadMessagesCustomerCount');
            } else {
              unreadMessagesExpertCount = unreadMessagesExpertCount - unreadToDelete;
              print('Бу, испугался, давай посчитаем эксперта $unreadMessagesExpertCount');
            }
          }

          if (unreadMessagesExpertCount < 0) {
            unreadMessagesExpertCount = 0;
          }
          if (unreadMessagesCustomerCount < 0) {
            unreadMessagesCustomerCount = 0;
          }

          emit(state.copyWith(
            unreadMessagesCustomer: unreadMessagesCustomerCount,
            unreadMessagesExpert: unreadMessagesExpertCount,
          ));
        },
      );
    } catch (e) {
      emit(const AuthState.error());
    }
  }

  Future<void> _onLoginRequested(
    _LoginRequestedEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final LoginModel model = await _authRepository.login(model: LoginRequest(email: event.email, password: event.password));

      if (NotificationManager().pushToken == null) {
        await NotificationManager().init();
      }

      String platform;
      DeviceType type;
      String deviceId;
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        platform = 'android';
        type = DeviceType.android;
        deviceId = androidInfo.id;
      } else {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        platform = 'ios';
        type = DeviceType.ios;
        deviceId = iosInfo.identifierForVendor ?? '';
      }

      await _authRepository.createDeviceNotification(
        CreateDeviceRequest(
          registrationId: NotificationManager().pushToken!,
          deviceId: deviceId,
          active: true,
          type: type,
        ),
      );

      final chats = await _chatRepository.getChats();

      int unreadMessagesExpert = 0;
      int unreadMessagesCustomer = 0;

      for (var chat in chats.chats) {
        if (chat.recipientIsExpert!) {
          unreadMessagesCustomer += chat.unreadMessagesCount;
        } else {
          unreadMessagesExpert += chat.unreadMessagesCount;
        }
      }

      GlobalVars.currentUserId = model.user.id;

      emit(AuthState.success(
        user: model.user,
        isExpert: event.isExpert,
        unreadMessagesExpert: unreadMessagesExpert,
        unreadMessagesCustomer: unreadMessagesCustomer,
      ));
    } catch (e) {
      if (e.toString().contains('EmailConfirm')) {
        emit(AuthState.confirmEmail(email: event.email));
        return;
      }
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onSwitchToExpert(
    _SwitchToExpertEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await state.mapOrNull(
        success: (state) async {
          emit(state.copyWith(
            isExpert: true,
          ));
        },
      );
    } catch (e) {
      emit(const AuthState.error());
    }
  }

  Future<void> _onSwitchToCustomer(
    _SwitchToCustomerEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await state.mapOrNull(
        success: (state) async {
          emit(state.copyWith(isExpert: false));
        },
      );
    } catch (e) {
      emit(const AuthState.error());
    }
  }

  Future<void> _onSignUpRequested(
    _SignUpRequestedEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final SignUpModel model = await _authRepository.signUp(
        model: SignUpRequest(
            email: event.email,
            password: event.password,
            phoneNumber: event.phoneNumber,
            firstName: event.firstName,
            lastName: event.lastName),
      );

      emit(AuthState.successSignUp(user: model));
    } catch (e) {
      if (e.toString().contains('EmailConfirm')) {
        emit(AuthState.confirmEmail(email: event.email));
        return;
      }
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onConfirmEmailRequested(
    _ConfirmEmailRequestedEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final model = await _authRepository.confirmEmail(token: event.token, email: event.email);
      final user = model.user;
      GlobalVars.currentUserId = user.id;

      emit(AuthState.success(user: user, isExpert: true));

      if (NotificationManager().pushToken == null) {
        await NotificationManager().init();
      }

      String platform;
      DeviceType type;
      String deviceId;
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        platform = 'android';
        type = DeviceType.android;
        deviceId = androidInfo.id;
      } else {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        platform = 'ios';
        type = DeviceType.ios;
        deviceId = iosInfo.identifierForVendor ?? '';
      }

      await _authRepository.createDeviceNotification(
        CreateDeviceRequest(registrationId: NotificationManager().pushToken!, deviceId: deviceId, active: true, type: type),
      );
    } catch (e) {
      _snackBarRepository.addError(text: 'Неверный код');
      //emit(const AuthState.error());
    }
  }

  Future<void> _onResendCodeRequested(
    _ResendCodeRequestedEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _authRepository.resendCode(email: event.email);
      _snackBarRepository.addSuccess(text: 'На почту выслан новый код');
    } catch (e) {
      emit(const AuthState.error());
    }
  }

  Future<void> _onResetPasswordRequest(
    _ResetPasswordEmailRequest event,
    Emitter<AuthState> emit,
  ) async {
    try {
      //emit(const AuthState.loading());

      await _authRepository.resetPasswordRequest(email: event.email);

      emit(const AuthState.resetPassword());
    } catch (e) {
      if (e.toString().contains('email')) {
        _snackBarRepository.addWarning(text: 'Не найдена почта');
      } else {
        _snackBarRepository.addError(text: e.toString());
      }
    }
  }

  Future<void> _onSendPasswordRequest(
    _SendNewPasswordRequest event,
    Emitter<AuthState> emit,
  ) async {
    try {
      //emit(const AuthState.loading());

      await _authRepository.resetPassword(email: event.email, token: event.token, password: event.password);

      _snackBarRepository.addSuccess(text: 'Ваш пароль изменен');
      emit(const AuthState.initial());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onAuthCheckRequested(
    Emitter<AuthState> emit,
  ) async {
    try {
      final UserModel model = await _authRepository.checkAuth();
      final sharePreferencesManager = CustomInjector.find<SharedPreferencesManager>();
      final roleName = sharePreferencesManager.getString(key: SharedPreferencesKeys.role);

      GlobalVars.currentUserId = model.id;

      emit(AuthState.success(
        user: model,
        isExpert: roleName == 'expert',
        unreadMessagesExpert: 0,
        unreadMessagesCustomer: 0,
      ));

      final chats = await _chatRepository.getChats();

      int unreadMessagesExpert = 0;
      int unreadMessagesCustomer = 0;

      for (var chat in chats.chats) {
        if (chat.recipientIsExpert!) {
          unreadMessagesCustomer += chat.unreadMessagesCount;
        } else {
          unreadMessagesExpert += chat.unreadMessagesCount;
        }
      }

      emit(AuthState.success(
        user: model,
        isExpert: roleName == 'expert',
        unreadMessagesExpert: unreadMessagesExpert,
        unreadMessagesCustomer: unreadMessagesCustomer,
      ));
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _onLogoutRequested(
    Emitter<AuthState> emit,
  ) async {
    try {
      await _authRepository.logout();
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
    }
  }
}
