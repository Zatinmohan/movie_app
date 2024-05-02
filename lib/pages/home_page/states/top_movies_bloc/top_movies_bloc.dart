import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_top_movies_usecase.dart';
import 'package:movie_app/services/logger/logger_service.dart';

part 'top_movies_events.dart';
part 'top_movies_states.dart';
part 'top_movies_bloc.freezed.dart';

const String _logName = "Top Movies Bloc";

class TopMoviesBloc extends Bloc<TopMoviesEvents, TopMoviesStates> {
  final FetchTopMoviesUsecase _usecase;
  List<TopMoviesResultEntity> _originalData = [];
  TopMoviesBloc({
    required FetchTopMoviesUsecase usecase,
  })  : _usecase = usecase,
        super(const TopMoviesStates.initial()) {
    Logs.debugLog("$_logName Init");
    on<TopMoviesEvents>((event, emit) async {
      await event.map(
        fetchTopMovies: (_) async => await _fetchTopMovies(emit, event),
        fetchMoreMovies: (_) async => await _fetchMoreMovies(emit, event),
      );
    });
  }

  Future<void> _fetchTopMovies(
    Emitter<TopMoviesStates> emit,
    TopMoviesEvents event,
  ) async {
    try {
      _originalData.clear();
      emit(const TopMoviesStates.loading());
      final List<TopMoviesResultEntity> data =
          await _usecase.getTopMovies(pageKey: event.pageKey);

      _originalData.addAll(data);

      emit(TopMoviesStates.loaded(data: data));
    } catch (error) {
      Logs.errorLog(error.toString());
      emit(TopMoviesStates.error(error: error.toString()));
      rethrow;
    }
  }

  Future<void> _fetchMoreMovies(
    Emitter<TopMoviesStates> emit,
    TopMoviesEvents event,
  ) async {
    try {
      emit(const TopMoviesStates.loadingMoreMovies());
      final List<TopMoviesResultEntity> newData =
          await _usecase.getTopMovies(pageKey: event.pageKey);
      _originalData.addAll(newData);

      if (_originalData.isNotEmpty) {
        emit(TopMoviesStates.loaded(data: _originalData));
      }
    } catch (error) {
      Logs.errorLog(error.toString());
      rethrow;
    }
  }

  List<TopMoviesResultEntity> get loadedList => _originalData;

  @override
  Future<void> close() {
    Logs.debugLog("$_logName Dispose");
    return super.close();
  }
}
