part of 'bottom_bar_bloc.dart';

@freezed
class TabChangeState with _$TabChangeState {
  const factory TabChangeState.initial({@Default(0) int index}) = _Initial;
  const factory TabChangeState.tabChanged({required int index}) = _ChangedTab;
}
