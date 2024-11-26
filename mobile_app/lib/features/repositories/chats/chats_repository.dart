import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:clokwise/common/utils/custom_file.dart';
import 'package:dio/dio.dart' as dio;
import 'package:clokwise/common/constants/app_urls.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:clokwise/features/repositories/chats/models/attachment_model.dart';
import 'package:clokwise/features/repositories/chats/models/chat_list_model.dart';
import 'package:clokwise/features/repositories/chats/models/chats_model.dart';
import 'package:clokwise/features/repositories/chats/models/message_model.dart';
import 'package:clokwise/features/repositories/chats/models/socket_message_model.dart';
import 'package:clokwise/features/repositories/chats/requests/send_message_request.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:web_socket_client/web_socket_client.dart';
import 'package:path/path.dart' show basename;

Completer<bool>? _completer;

class ChatRepository implements CwDisposable {
  final _path = 'chats';

  final MainNetworkClient _mainNetworkClient;

  ChatRepository({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient {
    _init();
  }

  late final WebSocket socket;

  final _chatMessageStreamController = StreamController<SocketMessageModel>.broadcast();

  Stream<SocketMessageModel> get chatMessageStream => _chatMessageStreamController.stream;

  Future<void> _init() async {
    const FlutterSecureStorage secureStorage = FlutterSecureStorage();
    final authToken = await secureStorage.read(key: SecureStorageKeys.authToken.name);
    final refreshToken = await secureStorage.read(key: SecureStorageKeys.refreshToken.name);

    final getParams = '?Refresh=$refreshToken&Authorization=Bearer $authToken';

    socket = WebSocket(Uri.parse('${AppUrls.wsSchema}${AppUrls.mainWs}/chats/ws/$getParams'));

    socket.connection.listen((message) => print(message));

    socket.messages.listen((message) {
      _onChatMessage(message);
    });
  }

  @override
  FutureOr<void> dispose() {
    socket.close();
    _chatMessageStreamController.close();
  }

  void disconnect() {
    socket.close();
  }

  void markMessageAsRead({
    required int chatId,
  }) {
    dynamic data = jsonEncode({
      "type": "mark_chat_as_read",
      "data": {
        "chat_id": chatId,
      }
    });

    socket.send(data);
  }

  void _onChatMessage(dynamic data) {
    try {
      final jsonData = jsonDecode(data);
      SocketMessageModel message = SocketMessageModel.fromJson(jsonData);
      print(message.toString());
      _chatMessageStreamController.add(message);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> confirmChatting({required int chatId}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/confirm-chatting-request/$chatId/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }
  }

  static Future<void> downloadCallback(String id, int status, int progress) async {
    if (status == 2 && progress == 100) {
      _completer?.complete(true);
    } else if (progress == -1) {
      _completer?.complete(false);
    }
  }

  Future<bool> getAttachment({
    required String fileId,
  }) async {
    const FlutterSecureStorage secureStorage = FlutterSecureStorage();

    final authToken = await secureStorage.read(key: SecureStorageKeys.authToken.name);

    Directory? directory;

    if (Platform.isAndroid) {
      directory = Directory('/storage/emulated/0/Download');
    } else {
      directory = await getApplicationDocumentsDirectory();
    }
    final taskId = await FlutterDownloader.enqueue(
      url: '${AppUrls.path}/$fileId/',
      headers: {'Authorization': 'Bearer $authToken'},
      savedDir: directory.path,
      saveInPublicStorage: true,
      showNotification: true,
      openFileFromNotification: true, // click on notification to open downloaded file (for Android)
    );

    try {
      _completer = Completer<bool>();
      FlutterDownloader.registerCallback(downloadCallback);
      final tasks = await FlutterDownloader.loadTasks();
      await _completer!.future.then((success) {
        if (!success) {
          print('Ошибка при загрузке файла!');
          return false;
        } else {
          print('Файл загружен успешно!');
          return true;
        }
      }).catchError((error) {
        print('Исключение во время загрузки: $error');
        return false;
      });
    } catch (e) {
      throw Exception();
    }
    return false;
  }

  Future<AttachmentModel> uploadFile({
    required int chatId,
    required CustomFile file,
  }) async {
    final data = dio.FormData.fromMap({
      'file': dio.MultipartFile.fromBytes(
        file.bytes,
        filename: basename(file.fileName!),
        contentType: MediaType('file', file.fileTypeInfo.extension),
      ),
    });

    final response = await _mainNetworkClient.client.post(
      '$_path/upload-attachment/$chatId/',
      data: data,
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }

    return AttachmentModel.fromJson(response.data);
  }

  Future<AttachmentModel> uploadImage({
    required int chatId,
    required CustomFile image,
  }) async {
    final data = dio.FormData.fromMap({
      'file': dio.MultipartFile.fromBytes(
        image.bytes,
        filename: 'image.${image.fileTypeInfo.extension}',
        contentType: MediaType('image', image.fileTypeInfo.extension),
      ),
    });

    final response = await _mainNetworkClient.client.post(
      '$_path/upload-attachment/$chatId/',
      data: data,
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }

    return AttachmentModel.fromJson(response.data);
  }

  Future<void> sendReview({
    required int chatId,
    required double rating,
    required String text,
  }) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/send-review/$chatId/',
      data: {
        'text': text,
        'rating': rating,
      },
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }
  }

  Future<int> startChatting({required int userId}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/start-chatting/$userId/',
    );

    if (response.statusCode != 200) {
      if (response.data['code'] == 'CHAT_ALREADY_EXISTS') {
        throw Exception(response.data['chat_id']);
      }
      throw Exception(response.data['error'].toString());
    }

    final chatId = response.data['chat_id'];

    return chatId;
  }

  Future<int> startChattingTask({required int userId, required applicationId}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/start-chatting/$userId/$applicationId/',
    );

    if (response.statusCode != 200) {
      if (response.data['code'] == 'CHAT_ALREADY_EXISTS') {
        throw Exception(response.data['chat_id']);
      }
      throw Exception(response.data['error'].toString());
    }

    final chatId = response.data['chat_id'];

    return chatId;
  }

  Future<void> finishChatting({
    required int chatId,
    required double rating,
    required String text,
  }) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/finish-chatting/$chatId/',
      data: {
        'text': text,
        'rating': rating,
      },
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }
  }

  Future<void> declineChat({required int chatId}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/decline-chatting-request/$chatId/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }
  }

  Future<List<MessageModel>> getMessages({required int chatId}) async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-messages/$chatId/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }

    final messages = response.data.map<MessageModel>((message) => MessageModel.fromJson(message)).toList();

    return messages;
  }

  Future<ChatsModel> getChats() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-chats/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data.toString());
    }

    final chats = ChatsModel.fromJson(response.data);

    return chats;
  }

  Future<ChatListModel> getChat({required int chatId}) async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-chat/$chatId/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data.toString());
    }

    final chat = ChatListModel.fromJson(response.data);

    return chat;
  }

  Future<ChatListModel> getSupportChat() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-chat/0/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data.toString());
    }

    final chat = ChatListModel.fromJson(response.data);

    return chat;
  }

  Future<void> sendMessage({required SendMessageRequest messageRequest}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/send-message/',
      data: messageRequest.toJson(),
    );

    if (response.statusCode != 200) {
      throw Exception(response.statusMessage.toString());
    }
  }
}
