import 'package:get_it/get_it.dart';
import 'package:movie_app/pages/home_page/data/repo_impl/home_page_repo_impl.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_now_playing_usecase.dart';
import 'package:movie_app/pages/home_page/domain/usecases/fetch_top_movies_usecase.dart';
import 'package:movie_app/pages/home_page/states/now_playing_movies_bloc/now_playing_movies_bloc.dart';
import 'package:movie_app/pages/home_page/states/top_movies_bloc/top_movies_bloc.dart';
import 'package:movie_app/services/api/api_service.dart';

class HomePageDependencyInjection {
  final GetIt sl = GetIt.instance;
  HomePageDependencyInjection() {
    if (!sl.isRegistered<HomePageRepoImpl>()) {
      final ApiService apiService = sl.get<ApiService>();
      sl.registerFactory(() => HomePageRepoImpl(apiService: apiService));
    }

    if (!sl.isRegistered<FetchNowPlayingUsecase>()) {
      sl.registerFactory<FetchNowPlayingUsecase>(
        () => FetchNowPlayingUsecase(homePageRepoImpl: sl()),
      );
    }

    if (!sl.isRegistered<FetchTopMoviesUsecase>()) {
      sl.registerFactory<FetchTopMoviesUsecase>(
        () => FetchTopMoviesUsecase(repo: sl()),
      );
    }

    if (!sl.isRegistered<NowPlayingBloc>()) {
      sl.registerLazySingleton<NowPlayingBloc>(
        () => NowPlayingBloc(usecase: sl()),
      );
    }
    if (!sl.isRegistered<TopMoviesBloc>()) {
      sl.registerLazySingleton<TopMoviesBloc>(
        () => TopMoviesBloc(usecase: sl()),
      );
    }
  }
}
