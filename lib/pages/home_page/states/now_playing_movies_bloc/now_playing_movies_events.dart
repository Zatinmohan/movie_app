part of 'now_playing_movies_bloc.dart';

@freezed
class NowPlayingMovieEvents with _$NowPlayingMovieEvents {
  const factory NowPlayingMovieEvents.fetchNowPlayingMovies({
    required int pageKey,
  }) = _FetchMovies;

  const factory NowPlayingMovieEvents.fetchMoreNowPlayingMovies(
      {required int pageKey}) = _FetchMoreDat;
}
