part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchResultRequested({required SearchRequest request}) = _SearchResultRequestedEvent;
  const factory SearchEvent.getIndustries() = _GetIndustriesRequestedEvent;
  const factory SearchEvent.getSubindustries({required int id}) = _GetSubindustriesRequestedEvent;
  const factory SearchEvent.getFunctions({required int id}) = _GetFunctionsRequestedEvent;
  const factory SearchEvent.getSubfunctions({required int id}) = _GetSubfunctionsRequestedEvent;
  const factory SearchEvent.startChat({required int userId}) = _StartChatRequestedEvent;
  const factory SearchEvent.resetSearch() = _ResetSearchRequestedEvent;
}
