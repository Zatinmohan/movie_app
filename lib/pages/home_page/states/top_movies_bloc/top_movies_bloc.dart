import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_top_movies_usecase.dart';

part 'top_movies_events.dart';
part 'top_movies_states.dart';
part 'top_movies_bloc.freezed.dart';

class TopMoviesBloc extends Bloc<TopMoviesEvents, TopMoviesStates> {
  final FetchTopMoviesUsecase _usecase;
  TopMoviesBloc({required FetchTopMoviesUsecase usecase})
      : _usecase = usecase,
        super(const TopMoviesStates.initial()) {
    on<TopMoviesEvents>((event, emit) async {
      await event.map(
        fetchTopMovies: (_) => _fetchTopMovies(emit, event),
      );
    });
  }

  Future<void> _fetchTopMovies(
    Emitter<TopMoviesStates> emit,
    TopMoviesEvents event,
  ) async {
    try {
      emit(const TopMoviesStates.loading());
      final List<TopMoviesResultEntity> newData =
          await _usecase.getTopMovies(pageKey: event.pageKey);

      if (event.previousData?.isNotEmpty ?? false) {
        final List<TopMoviesResultEntity> newList = [
          ...event.previousData!,
          ...newData
        ];
        emit(TopMoviesStates.loaded(data: newList));
      } else {
        emit(TopMoviesStates.loaded(data: newData));
      }
    } catch (error) {
      emit(TopMoviesStates.error(error: error.toString()));
      rethrow;
    }
  }
}
