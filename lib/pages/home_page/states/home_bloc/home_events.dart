part of 'home_bloc.dart';

@freezed
class HomeEvents with _$HomeEvents {
  const factory HomeEvents.fetchHomePageData() = _FetchHomePageData;
  const factory HomeEvents.topMoviesLoaded({
    required List<TopMoviesResultEntity> data,
  }) = _TopMoviesLoaded;
  const factory HomeEvents.nowPlayingMoviesLoaded({
    required List<NowPlayingResultEntity> data,
  }) = _NowPlayingLoaded;
}
