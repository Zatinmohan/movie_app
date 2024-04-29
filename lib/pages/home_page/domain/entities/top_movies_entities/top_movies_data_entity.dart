import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/entities/top_movies_entities/top_movies_result_entity.dart';

part 'top_movies_data_entity.freezed.dart';

@freezed
class TopMoviesDataEntity with _$TopMoviesDataEntity {
  const factory TopMoviesDataEntity({
    final int? page,
    final List<TopMoviesResultEntity>? results,
    final int? totalPages,
    final int? totalResults,
  }) = _TopMoviesDataEntity;
}
