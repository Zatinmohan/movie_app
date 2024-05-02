import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_now_playing_usecase.dart';
import 'package:movie_app/services/logger/logger_service.dart';

part 'now_playing_movies_events.dart';
part 'now_playing_movies_states.dart';

part 'now_playing_movies_bloc.freezed.dart';

const String _logName = "Now Playing Bloc";

class NowPlayingBloc
    extends Bloc<NowPlayingMovieEvents, NowPlayingMoviesStates> {
  final FetchNowPlayingUsecase _fetchMoviesUsecase;

  List<NowPlayingResultEntity> _originalList = [];

  NowPlayingBloc({required FetchNowPlayingUsecase usecase})
      : _fetchMoviesUsecase = usecase,
        super(const NowPlayingMoviesStates.initial()) {
    Logs.debugLog("$_logName Init");
    on<NowPlayingMovieEvents>((event, emit) async {
      await event.map(
        fetchNowPlayingMovies: (_) => _fetchMovies(emit, event),
        fetchMoreNowPlayingMovies: (_) => _fetchMoreMovies(event, emit),
      );
    });
  }

  Future<void> _fetchMovies(
    Emitter<NowPlayingMoviesStates> emit,
    NowPlayingMovieEvents event,
  ) async {
    try {
      _originalList.clear();
      emit(const NowPlayingMoviesStates.loading());
      final List<NowPlayingResultEntity> data =
          await _fetchMoviesUsecase.fetchNowPlaying(pageKey: event.pageKey);

      _originalList.addAll(data);

      emit(NowPlayingMoviesStates.loaded(data: data));
    } catch (error) {
      emit(NowPlayingMoviesStates.error(errorMessage: error.toString()));
      Logs.errorLog(error.toString(), StackTrace.current);
      rethrow;
    }
  }

  Future<void> _fetchMoreMovies(
    NowPlayingMovieEvents event,
    Emitter<NowPlayingMoviesStates> emit,
  ) async {
    try {
      emit(const NowPlayingMoviesStates.loadingMoreMovies());
      final List<NowPlayingResultEntity> newData =
          await _fetchMoviesUsecase.fetchNowPlaying(pageKey: event.pageKey);

      _originalList.addAll(newData);

      emit(NowPlayingMoviesStates.loaded(data: _originalList));
    } catch (error) {
      Logs.errorLog(error.toString(), StackTrace.current);
      rethrow;
    }
  }

  @override
  Future<void> close() {
    Logs.debugLog("$_logName Dispose");
    return super.close();
  }
}
