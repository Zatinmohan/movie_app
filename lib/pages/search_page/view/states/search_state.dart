part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded({required List<SearchResultEntity> data}) =
      _Loaded;
  const factory SearchState.empty() = _Empty;
  const factory SearchState.error({required String error}) = _Error;
}
