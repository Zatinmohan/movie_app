import 'package:movie_app/pages/home_page/data/models/top_movies_models/top_movies_data_model.dart';
import 'package:movie_app/pages/home_page/data/models/top_movies_models/top_movies_result_model.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_data_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';

extension XTopMoviesDataModel on TopMoviesDataModel {
  TopMoviesDataEntity toEntity() => TopMoviesDataEntity(
        page: page,
        results: results?.map((e) => e.toEntity()).toList(),
        totalPages: totalPages,
        totalResults: totalResults,
      );
}

extension XTopMoviesResultModel on TopMoviesResultModel {
  TopMoviesResultEntity toEntity() => TopMoviesResultEntity(
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
