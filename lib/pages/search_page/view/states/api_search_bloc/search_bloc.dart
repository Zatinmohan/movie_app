import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_result_entity.dart';
import 'package:movie_app/pages/search_page/domain/usecases/fetch_search_results_usecase.dart';
import 'package:movie_app/pages/search_page/extensions/search_results_extensions.dart';
import 'package:movie_app/pages/search_page/pages/local_search_page.dart';
import 'package:movie_app/services/logger/logger_service.dart';

part 'search_state.dart';
part 'search_event.dart';
part 'search_bloc.freezed.dart';

const String _logName = "Search Bloc";

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final FetchSearchResultUsecaes? _fetchSearchResultUsecaes;

  List<SearchResultEntity> _overallData = [];

  SearchBloc({FetchSearchResultUsecaes? usecaes})
      : _fetchSearchResultUsecaes = usecaes,
        super(const SearchState.initial()) {
    Logs.debugLog("$_logName Init");
    on<SearchEvent>((event, emit) async {
      await event.map(
        fetchData: (_) async => await _fetchSearchMovies(event, emit),
        fetchDataFromNextPage: (value) async =>
            await _fetchMoviesFromNextPage(event, emit),
        fetchDataFromLocal: (value) async =>
            await _fetchDataFromLocalStorage(event, emit),
      );
    });
  }

  Future<void> _fetchSearchMovies(
    SearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      if (_fetchSearchResultUsecaes == null) {
        throw "Please check the code and try again";
      }
      _overallData.clear();
      emit(const SearchState.loading());
      final int pageKey = event.maybeMap(
        fetchData: (value) => value.pageKey,
        orElse: () => 1,
      );

      List<SearchResultEntity> data =
          await _fetchSearchResultUsecaes!.fetchSearchedMovies(
        searchTerm: event.name,
        pageKey: pageKey,
      );

      _overallData.addAll(data);
      if (_overallData.isEmpty) {
        emit(const SearchState.empty());
      } else {
        emit(SearchState.loaded(data: data));
      }
    } catch (e) {
      emit(
        SearchState.error(
          error: e.toString(),
        ),
      );
      rethrow;
    }
  }

  Future<void> _fetchMoviesFromNextPage(
    SearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    if (_fetchSearchResultUsecaes == null) {
      throw "Please check the code and try again";
    }
    emit(const SearchState.loadingMoreData());
    final int pageKey = event.maybeMap(
      fetchDataFromNextPage: (value) => value.pageKey,
      orElse: () => 1,
    );

    List<SearchResultEntity> data =
        await _fetchSearchResultUsecaes!.fetchSearchedMovies(
      searchTerm: event.name,
      pageKey: pageKey,
    );

    _overallData.addAll(data);
    emit(SearchState.loaded(data: _overallData));
  }

  Future<void> _fetchDataFromLocalStorage(
    SearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(const SearchState.loading());
      final _LocalSearch? data = event.mapOrNull(
        fetchDataFromLocal: (value) => value,
      );

      if (data != null) {
        if (data.searchType == SearchFilterType.NowPlaying) {
          List<SearchResultEntity> finalResult = _fetchDataFromNowPlayingSearch(
            searchTerm: data.name,
            data: data.data as List<NowPlayingResultEntity>,
          );

          if (finalResult.isNotEmpty) {
            emit(SearchState.loaded(data: finalResult));
          } else {
            emit(const SearchState.empty());
          }
        } else {
          List<SearchResultEntity> finalResult = _fetchDataFromTopMovies(
            searchTerm: data.name,
            data: data.data as List<TopMoviesResultEntity>,
          );

          if (finalResult.isNotEmpty) {
            emit(SearchState.loaded(data: finalResult));
          } else {
            emit(const SearchState.empty());
          }
        }
      } else {
        throw "Something went wrong";
      }
    } catch (error) {
      rethrow;
    }
  }

  List<SearchResultEntity> _fetchDataFromNowPlayingSearch({
    required String searchTerm,
    required List<NowPlayingResultEntity> data,
  }) {
    List<NowPlayingResultEntity> searchedTerms = [];

    searchedTerms = data.where((element) {
      if (element.title?.toLowerCase().contains(searchTerm.toLowerCase()) ??
          false) {
        return true;
      } else {
        return false;
      }
    }).toList();

    List<SearchResultEntity> finalResult =
        searchedTerms.map((e) => e.toSearchEntity()).toList();
    return finalResult;
  }

  List<SearchResultEntity> _fetchDataFromTopMovies({
    required String searchTerm,
    required List<TopMoviesResultEntity> data,
  }) {
    List<TopMoviesResultEntity> searchedTerms = [];

    searchedTerms = data
        .where((element) =>
            element.title?.toLowerCase().contains(searchTerm.toLowerCase()) ??
            false)
        .toList();

    List<SearchResultEntity> finalResult =
        searchedTerms.map((e) => e.toSearchEntity()).toList();
    return finalResult;
  }
}
