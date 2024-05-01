import 'package:get_it/get_it.dart';
import 'package:movie_app/pages/search_page/data/repository_impl/search_repo_impl.dart';
import 'package:movie_app/pages/search_page/domain/usecases/fetch_search_results_usecase.dart';
import 'package:movie_app/services/api/api_service.dart';

class SearchPageDependencyInjection {
  final GetIt sl = GetIt.instance;
  SearchPageDependencyInjection() {
    if (!sl.isRegistered<SearchRepoImpl>()) {
      sl.registerFactory<SearchRepoImpl>(
        () => SearchRepoImpl(apiService: sl.get<ApiService>()),
      );
    }
    if (!sl.isRegistered<FetchSearchResultUsecaes>()) {
      sl.registerFactory<FetchSearchResultUsecaes>(
        () => FetchSearchResultUsecaes(repo: sl()),
      );
    }
  }
}
