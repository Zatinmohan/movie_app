import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_event.dart';
part 'bottom_bar_state.dart';

part 'bottom_bar_bloc.freezed.dart';

class BottomTabBloc extends Bloc<TabChangeEvent, TabChangeState> {
  BottomTabBloc() : super(const TabChangeState.initial()) {
    on<TabChangeEvent>((event, emit) {
      event.map(changeTab: (_) => _updateIndex(event, emit));
    });
  }

  void _updateIndex(TabChangeEvent event, Emitter<TabChangeState> emit) {
    int updatedIndex = event.index;
    emit(TabChangeState.tabChanged(index: updatedIndex));
  }
}
