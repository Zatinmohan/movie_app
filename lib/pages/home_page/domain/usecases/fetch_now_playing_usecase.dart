import 'package:movie_app/pages/home_page/data/models/now_playing_models/now_playing_data_model.dart';
import 'package:movie_app/pages/home_page/data/repo_impl/home_page_repo_impl.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_data_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/extensions/now_playing_extensions.dart';
import 'package:movie_app/services/logger/logger_service.dart';

class FetchNowPlayingUsecase {
  final HomePageRepoImpl _homePageRepoImpl;

  const FetchNowPlayingUsecase({
    required HomePageRepoImpl homePageRepoImpl,
  }) : _homePageRepoImpl = homePageRepoImpl;

  Future<List<NowPlayingResultEntity>> fetchNowPlaying(
      {required int pageKey}) async {
    try {
      final NowPlayingDataModel status =
          await _homePageRepoImpl.fetchNowPlayingMovies(pageKey: pageKey);

      final NowPlayingDataEntity result = status.toEntity();

      return result.results ?? [];
    } catch (error) {
      Logs().errorLog('$error', StackTrace.current);
      rethrow;
    }
  }
}
