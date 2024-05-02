part of 'search_bloc.dart';

@freezed
class SearchEvent<T> with _$SearchEvent {
  const factory SearchEvent.fetchData({
    required String name,
    required int pageKey,
  }) = _FetchData;
  const factory SearchEvent.fetchDataFromNextPage({
    required String name,
    required int pageKey,
  }) = _FetchDataFromNextPage;
  const factory SearchEvent.fetchDataFromLocal({
    required String name,
    required SearchFilterType searchType,
    required List<T> data,
  }) = _LocalSearch;
}
