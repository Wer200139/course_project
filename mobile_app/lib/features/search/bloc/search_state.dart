part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _InitialState;

  const factory SearchState.loading() = _LoadingState;

  const factory SearchState.success({required List<ExpertResultModel> experts}) = _SuccessState;

  const factory SearchState.successGetIndustries({required List<ClassificatorModel> industries}) = _SuccessIndustriesState;

  const factory SearchState.successGetSubindustries({required List<ClassificatorModel> subindustries, required List<ClassificatorModel> functions, required List<ClassificatorModel> subfunctions}) = _SuccessSubindustriesState;

  const factory SearchState.successGetFunctions({required List<ClassificatorModel> functions}) = _SuccessFunctionsState;

  const factory SearchState.successGetSubfunctions({required List<ClassificatorModel> subfunctions}) = _SuccessSubfunctionsState;

  const factory SearchState.successStartChat({required int chatId}) = _SuccessStartChatState;

  const factory SearchState.error() = _ErrorState;
}
