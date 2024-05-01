import 'package:movie_app/pages/search_page/data/models/search_data_model.dart';
import 'package:movie_app/pages/search_page/data/repository_impl/search_repo_impl.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_data_entity.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_result_entity.dart';
import 'package:movie_app/pages/search_page/extensions/search_results_extensions.dart';

class FetchSearchResultUsecaes {
  final SearchRepoImpl _repo;

  const FetchSearchResultUsecaes({required SearchRepoImpl repo}) : _repo = repo;

  Future<List<SearchResultEntity>> fetchSearchedMovies({
    required String searchTerm,
    required int pageKey,
  }) async {
    try {
      final SearchMovieDataModel data = await _repo.fetchSearchResult(
        searchTerm: searchTerm,
        pageKey: pageKey,
      );

      final SearchDataEntity result = data.toEntity();
      return result.results ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
