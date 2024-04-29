import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_now_playing_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_top_movies_usecase.dart';

part 'home_events.dart';
part 'home_states.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvents, HomeStates> {
  final FetchNowPlayingUsecase _fetchNowPlayingUsecase;
  final FetchTopMoviesUsecase _fetchTopMoviesUsecase;

  HomeBloc(this._fetchNowPlayingUsecase, this._fetchTopMoviesUsecase)
      : super(const HomeStates.initial()) {
    on<HomeEvents>((event, emit) async {
      await event.map(
        fetchNowPlaying: (event) => _fetchNowPlayingMovies(event, emit),
        fetchTopMovies: (event) {},
        fetchHomePageData: (event) => _fetchHomePageData(emit),
      );
    });
  }

  Future<void> _fetchHomePageData(Emitter<HomeStates> emit) async {
    try {
      emit(const HomeStates.loading());
      final List<NowPlayingResultEntity> nowPlaying =
          await _fetchNowPlayingUsecase.fetchNowPlaying(pageKey: 1);

      final List<TopMoviesResultEntity> topMovies =
          await _fetchTopMoviesUsecase.getTopMovies(pageKey: 1);
      emit(
        HomeStates.homeLoaded(
            nowPlayingData: nowPlaying, topMoviesData: topMovies),
      );
    } catch (e) {
      emit(const HomeStates.error());
      rethrow;
    }
  }

  Future<void> _fetchTopMovies(
    HomeEvents event,
    Emitter<HomeStates> emit,
  ) async {
    try {
      emit(const HomeStates.loading());
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _fetchNowPlayingMovies(
    HomeEvents event,
    Emitter<HomeStates> emit,
  ) async {
    try {
      emit(const HomeStates.loading());
      final List<NowPlayingResultEntity> data =
          await _fetchNowPlayingUsecase.fetchNowPlaying(pageKey: 1);
      emit(HomeStates.nowPlayingLoaded(data: data));
    } catch (e) {
      emit(const HomeStates.error());
      rethrow;
    }
  }
}
