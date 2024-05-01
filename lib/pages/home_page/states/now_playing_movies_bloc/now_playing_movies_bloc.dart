import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_now_playing_usecase.dart';

part 'now_playing_movies_events.dart';
part 'now_playing_movies_states.dart';

part 'now_playing_movies_bloc.freezed.dart';

class NowPlayingBloc
    extends Bloc<NowPlayingMovieEvents, NowPlayingMoviesStates> {
  final FetchNowPlayingUsecase _fetchMoviesUsecase;
  NowPlayingBloc({required FetchNowPlayingUsecase usecase})
      : _fetchMoviesUsecase = usecase,
        super(const NowPlayingMoviesStates.initial()) {
    on<NowPlayingMovieEvents>((event, emit) async {
      await event.map(
        fetchNowPlayingMovies: (_) => _fetchMovies(emit, event),
      );
    });
  }

  Future<void> _fetchMovies(
    Emitter<NowPlayingMoviesStates> emit,
    NowPlayingMovieEvents event,
  ) async {
    try {
      emit(const NowPlayingMoviesStates.loading());
      final List<NowPlayingResultEntity> newData =
          await _fetchMoviesUsecase.fetchNowPlaying(pageKey: event.pageKey);
      List<NowPlayingResultEntity>? previousList = event.previousData;

      if (previousList?.isNotEmpty ?? false) {
        previousList = [...previousList ?? [], ...newData];
        emit(NowPlayingMoviesStates.loaded(data: previousList));
      } else {
        emit(NowPlayingMoviesStates.loaded(data: newData));
      }
    } catch (error) {
      emit(NowPlayingMoviesStates.error(errorMessage: error.toString()));
      rethrow;
    }
  }
}
