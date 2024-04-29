import 'package:movie_app/pages/home_page/data/models/top_movies_models/top_movies_data_model.dart';
import 'package:movie_app/pages/home_page/data/repo_impl/home_page_repo_impl.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_data_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:movie_app/pages/home_page/extensions/top_movies_extensions.dart';

class FetchTopMoviesUsecase {
  final HomePageRepoImpl _repo;

  const FetchTopMoviesUsecase({required HomePageRepoImpl repo}) : _repo = repo;

  Future<List<TopMoviesResultEntity>> getTopMovies(
      {required int pageKey}) async {
    try {
      final TopMoviesDataModel status =
          await _repo.fetchTopMovies(pageKey: pageKey);
      final TopMoviesDataEntity result = status.toEntity();
      return result.results ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
