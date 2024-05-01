part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.fetchData({
    required String name,
    required int pageKey,
  }) = _FetchData;
}