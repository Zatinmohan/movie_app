import 'package:movie_app/pages/search_page/data/models/search_data_model.dart';
import 'package:movie_app/services/api/api_service.dart';
import 'package:movie_app/services/api/constants/api_constants.dart';

class SearchRepoImpl {
  final ApiService _apiService;

  const SearchRepoImpl({required ApiService apiService})
      : _apiService = apiService;

  Future<SearchMovieDataModel> fetchSearchResult({
    required String searchTerm,
    required int pageKey,
  }) async {
    try {
      Map<String, dynamic> params = {
        'query': searchTerm,
        "include_adult": true,
        "language": "en-US",
        "page": pageKey,
      };

      final Map<String, dynamic> json = await _apiService.getRequest(
        endPoint: ApiConstants.kSearchMovies,
        queryParams: params,
      );

      final SearchMovieDataModel result = SearchMovieDataModel.fromJson(json);
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
