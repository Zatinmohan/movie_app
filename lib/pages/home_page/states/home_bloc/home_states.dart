part of 'home_bloc.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = _Initial;
  const factory HomeStates.loading() = _Loading;
  const factory HomeStates.homeLoaded({
    required List<NowPlayingResultEntity> nowPlayingData,
    required List<TopMoviesResultEntity> topMoviesData,
  }) = _Loaded;
  const factory HomeStates.nowPlayingLoaded(
      {required List<NowPlayingResultEntity> data}) = _NowPlayingLoaded;
  const factory HomeStates.error() = _Error;
}
