import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_result_entity.dart';
import 'package:movie_app/pages/search_page/domain/usecases/fetch_search_results_usecase.dart';

part 'search_state.dart';
part 'search_event.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final FetchSearchResultUsecaes _fetchSearchResultUsecaes;

  List<SearchResultEntity> _overallData = [];

  SearchBloc({required FetchSearchResultUsecaes usecaes})
      : _fetchSearchResultUsecaes = usecaes,
        super(const SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        fetchData: (_) async => await _fetchSearchMovies(event, emit),
        fetchDataFromNextPage: (value) async =>
            await _fetchMoviesFromNextPage(event, emit),
      );
    });
  }

  Future<void> _fetchSearchMovies(
    SearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    try {
      _overallData.clear();
      emit(const SearchState.loading());

      List<SearchResultEntity> data =
          await _fetchSearchResultUsecaes.fetchSearchedMovies(
        searchTerm: event.name,
        pageKey: event.pageKey,
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
    emit(const SearchState.loadingMoreData());
    List<SearchResultEntity> data =
        await _fetchSearchResultUsecaes.fetchSearchedMovies(
      searchTerm: event.name,
      pageKey: event.pageKey,
    );

    _overallData.addAll(data);
    emit(SearchState.loaded(data: _overallData));
  }
}
