part of 'bottom_bar_bloc.dart';

@freezed
class TabChangeEvent with _$TabChangeEvent {
  const factory TabChangeEvent.changeTab({required int index}) = _ChangeTab;
}
