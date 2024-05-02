part of 'now_playing_movies_bloc.dart';

@freezed
class NowPlayingMoviesStates with _$NowPlayingMoviesStates {
  const factory NowPlayingMoviesStates.initial() = _Initial;
  const factory NowPlayingMoviesStates.loading() = _Loading;
  const factory NowPlayingMoviesStates.loadingMoreMovies() = _LoadingMoreMovies;
  const factory NowPlayingMoviesStates.loaded({
    required List<NowPlayingResultEntity> data,
  }) = _Loaded;
  const factory NowPlayingMoviesStates.error({
    required String errorMessage,
  }) = _Error;
}
