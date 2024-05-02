part of 'top_movies_bloc.dart';

@freezed
class TopMoviesEvents with _$TopMoviesEvents {
  const factory TopMoviesEvents.fetchTopMovies({
    required int pageKey,
  }) = _TopMoviesEvents;

  const factory TopMoviesEvents.fetchMoreMovies({
    required int pageKey,
  }) = _FetchMoreMovies;
}
