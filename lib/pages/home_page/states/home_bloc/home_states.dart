part of 'home_bloc.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = _Initial;
  const factory HomeStates.loading() = _Loading;
  const factory HomeStates.loaded() = _Loaded;
  const factory HomeStates.error({
    required String message,
  }) = _Error;
}
