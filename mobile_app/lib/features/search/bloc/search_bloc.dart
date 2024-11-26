import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/search/models/expert_result_model.dart';
import 'package:clokwise/features/repositories/search/request/search_request.dart';
import 'package:clokwise/features/repositories/search/search_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository _searchRepository;
  final ChatRepository _chatRepository;
  final ClassificatorRepository _classificatorRepository;
  final SnackBarRepository _snackBarRepository;

  SearchBloc({
    required SearchRepository searchRepository,
    required ChatRepository chatRepository,
    required ClassificatorRepository classificatorRepository,
    required SnackBarRepository snackBarRepository,
  })  : _searchRepository = searchRepository,
        _chatRepository = chatRepository,
        _classificatorRepository = classificatorRepository,
        _snackBarRepository = snackBarRepository,
        super(const SearchState.initial()) {
    on<SearchEvent>(
      (event, emit) => event.map(
        searchResultRequested: (event) => _onSearchResultRequested(event, emit),
        getIndustries: (event) => _onGetIndustriesRequested(emit),
        getSubindustries: (event) => _onGetSubindustriesRequested(event, emit),
        getFunctions: (event) => _onGetFunctionsRequested(event, emit),
        getSubfunctions: (event) => _onGetSubfunctionsRequested(event, emit),
        startChat: (event) => _onStartChatRequested(event, emit),
        resetSearch: (event) => _onResetSearchRequested(emit),
      ),
    );
  }

  @override
  Future<void> close() async {
    _searchRepository.dispose();

    return super.close();
  }

  Future<void> _onResetSearchRequested(
      Emitter<SearchState> emit,
      ) async {
    try {
      emit(SearchState.loading());
      emit(SearchState.initial());
    } catch (e) {
      String onlyNumber = e.toString().replaceAll("Exception: ", "");
      int number = int.parse(onlyNumber);

      emit(SearchState.successStartChat(chatId: number));
    }
  }

  Future<void> _onStartChatRequested(
    _StartChatRequestedEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      int chatId = await _chatRepository.startChatting(userId: event.userId);

      emit(SearchState.successStartChat(chatId: chatId));
    } catch (e) {
      String onlyNumber = e.toString().replaceAll("Exception: ", "");
      int number = int.parse(onlyNumber);

      emit(SearchState.successStartChat(chatId: number));
    }
  }

  Future<void> _onGetIndustriesRequested(
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(const SearchState.loading());

      final industries = await _classificatorRepository.getIndustries();

      emit(SearchState.successGetIndustries(industries: industries));
    } catch (e) {
      emit(const SearchState.error());
    }
  }

  Future<void> _onGetSubindustriesRequested(
    _GetSubindustriesRequestedEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(const SearchState.loading());

      final subindustries = await _classificatorRepository.getChildrenClassificator(id: event.id);
      final functions = await _classificatorRepository.getAvailableFunctions(id: event.id);
      final subfunctions = <ClassificatorModel>[];

      for (final function in functions) {
        if (function.children != null) {
          subfunctions.addAll(function.children!);
        }
      }

      emit(SearchState.successGetSubindustries(
        subindustries: subindustries,
        functions: functions,
        subfunctions: subfunctions,
      ));
    } catch (e) {
      emit(const SearchState.error());
    }
  }

  Future<void> _onGetFunctionsRequested(
    _GetFunctionsRequestedEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(const SearchState.loading());

      final functions =
          await _classificatorRepository.getChildrenClassificator(id: event.id);

      emit(SearchState.successGetFunctions(functions: functions));
    } catch (e) {
      emit(const SearchState.error());
    }
  }

  Future<void> _onGetSubfunctionsRequested(
    _GetSubfunctionsRequestedEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(const SearchState.loading());

      final subfunctions =
          await _classificatorRepository.getChildrenClassificator(id: event.id);

      emit(SearchState.successGetSubfunctions(subfunctions: subfunctions));
    } catch (e) {
      emit(const SearchState.error());
    }
  }

  Future<void> _onSearchResultRequested(
    _SearchResultRequestedEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(const SearchState.loading());

      final experts =
          await _searchRepository.getSearchResult(searchRequest: event.request);

      emit(SearchState.success(experts: experts));
    } catch (e) {
      _snackBarRepository.addError(text: 'Проблема ${e.toString()}');
      emit(const SearchState.error());
    }
  }
}
