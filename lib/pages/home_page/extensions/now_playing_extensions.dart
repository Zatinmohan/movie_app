import 'package:movie_app/pages/home_page/data/models/now_playing_models/now_playing_data_model.dart';
import 'package:movie_app/pages/home_page/data/models/now_playing_models/now_playing_date_range_model.dart';
import 'package:movie_app/pages/home_page/data/models/now_playing_models/now_playing_result_model.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_data_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_date_range_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';

extension XNowPlayingDataModel on NowPlayingDataModel {
  NowPlayingDataEntity toEntity() => NowPlayingDataEntity(
        dates: dates?.toEntity(),
        page: page,
        results: results?.map((e) => e.toEntity()).toList(),
        totalPages: totalPages,
        totalResults: totalResults,
      );
}

extension XNowPlayingDateRangeModel on NowPlayingDateRangeModel {
  NowPlayingDateRangeEntity toEntity() => NowPlayingDateRangeEntity(
        maximum: maximum,
        minimum: minimum,
      );
}

extension XNowPlayingResultModel on NowPlayingResultModel {
  NowPlayingResultEntity toEntity() => NowPlayingResultEntity(
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
