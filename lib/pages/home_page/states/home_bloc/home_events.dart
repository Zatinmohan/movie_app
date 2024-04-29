part of 'home_bloc.dart';

@freezed
class HomeEvents with _$HomeEvents {
  const factory HomeEvents.fetchNowPlaying({
    required int pageKey,
  }) = _FetchNowPlaying;
  const factory HomeEvents.fetchTopMovies() = _FetchTopMovies;
  const factory HomeEvents.fetchHomePageData() = _FetchHomePageData;
}
