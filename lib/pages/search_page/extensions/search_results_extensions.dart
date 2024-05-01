import 'package:movie_app/pages/search_page/data/models/search_data_model.dart';
import 'package:movie_app/pages/search_page/data/models/search_result_model.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_data_entity.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_result_entity.dart';

extension XSearchDataModel on SearchMovieDataModel {
  SearchDataEntity toEntity() => SearchDataEntity(
        page: page,
        results: results?.map((e) => e.toEntity()).toList(),
      );
}

extension XSearchResultModel on SearchMovieResultModel {
  SearchResultEntity toEntity() => SearchResultEntity(
        adult: adult,
        backdropPath: backdropPath,
        genreIds: genreIds,
        id: id,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        title: title,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
