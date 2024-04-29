import 'package:movie_app/pages/home_page/data/models/now_playing_models/now_playing_data_model.dart';
import 'package:movie_app/pages/home_page/data/models/top_movies_models/top_movies_data_model.dart';
import 'package:movie_app/services/api/api_service.dart';
import 'package:movie_app/services/api/constants/api_constants.dart';

class HomePageRepoImpl {
  final ApiService _apiService;

  const HomePageRepoImpl({required ApiService apiService})
      : _apiService = apiService;

  Future<NowPlayingDataModel> fetchNowPlayingMovies(
      {required int pageKey}) async {
    try {
      Map<String, dynamic> params = {
        'language': 'en-US',
        'page': pageKey,
      };
      final Map<String, dynamic> json = await _apiService.getRequest(
        endPoint: ApiConstants.kNowPlayingMovies,
        queryParams: params,
      );

      final NowPlayingDataModel result = NowPlayingDataModel.fromJson(json);

      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<TopMoviesDataModel> fetchTopMovies({required int pageKey}) async {
    try {
      Map<String, dynamic> params = {
        'language': 'en-US',
        'page': pageKey,
      };
      final Map<String, dynamic> json = await _apiService.getRequest(
        endPoint: ApiConstants.kTopMovies,
        queryParams: params,
      );
      final TopMoviesDataModel result = TopMoviesDataModel.fromJson(json);
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
