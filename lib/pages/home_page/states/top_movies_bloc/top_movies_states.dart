part of 'top_movies_bloc.dart';

@freezed
class TopMoviesStates with _$TopMoviesStates {
  const factory TopMoviesStates.initial() = _Initial;
  const factory TopMoviesStates.loading() = _Loading;
  const factory TopMoviesStates.loaded({
    required List<TopMoviesResultEntity> data,
  }) = _Loaded;
  const factory TopMoviesStates.loadingMoreMovies() = _LoadingMoreMovies;
  const factory TopMoviesStates.error({required String error}) = _Error;
}
