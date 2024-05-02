import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/states/now_playing_movies_bloc/now_playing_movies_bloc.dart';
import 'package:movie_app/pages/home_page/states/top_movies_bloc/top_movies_bloc.dart';
import 'package:movie_app/services/logger/logger_service.dart';

part 'home_events.dart';
part 'home_states.dart';
part 'home_bloc.freezed.dart';

const String _logName = "Home Bloc";

class HomeBloc extends Bloc<HomeEvents, HomeStates> {
  final NowPlayingBloc _nowPlayingBloc;
  final TopMoviesBloc _topMoviesBloc;

  HomeBloc({
    required NowPlayingBloc nowPlayingBloc,
    required TopMoviesBloc moviesBloc,
  })  : _nowPlayingBloc = nowPlayingBloc,
        _topMoviesBloc = moviesBloc,
        super(const HomeStates.initial()) {
    Logs.debugLog("$_logName Init");
    on<HomeEvents>((event, emit) async {
      await event.map(
        fetchHomePageData: (event) => _fetchHomePageData(emit, event),
        nowPlayingMoviesLoaded: (value) {
          emit(const HomeStates.loaded());
        },
        topMoviesLoaded: (value) {
          emit(const HomeStates.loaded());
        },
      );
    });
    _nowPlayingBloc.stream.listen((nowPlayingBlocState) {
      nowPlayingBlocState.whenOrNull(loaded: (data) {
        add(HomeEvents.nowPlayingMoviesLoaded(data: data));
      });
    });

    _topMoviesBloc.stream.listen((topMoviesBlocState) {
      topMoviesBlocState.whenOrNull(loaded: (data) {
        add(HomeEvents.topMoviesLoaded(data: data));
      });
    });
  }

  Future<void> _fetchHomePageData(
    Emitter<HomeStates> emit,
    HomeEvents events,
  ) async {
    try {
      emit(const HomeStates.loading());
      _nowPlayingBloc.add(
        const NowPlayingMovieEvents.fetchNowPlayingMovies(pageKey: 1),
      );
      _topMoviesBloc.add(const TopMoviesEvents.fetchTopMovies(pageKey: 1));
    } catch (error) {
      emit(
        HomeStates.error(message: error.toString()),
      );
      rethrow;
    }
  }

  @override
  Future<void> close() {
    Logs.debugLog("$_logName Disposed");
    return super.close();
  }
}
