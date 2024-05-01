part of 'top_movies_bloc.dart';

@freezed
class TopMoviesEvents with _$TopMoviesEvents {
  const factory TopMoviesEvents.fetchTopMovies({
    List<TopMoviesResultEntity>? previousData,
    required int pageKey,
  }) = _TopMoviesEvents;
}
