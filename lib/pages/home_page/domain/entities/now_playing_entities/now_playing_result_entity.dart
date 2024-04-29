import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing_result_entity.freezed.dart';

@freezed
class NowPlayingResultEntity with _$NowPlayingResultEntity {
  const factory NowPlayingResultEntity({
    final bool? adult,
    final String? backdropPath,
    final List<int>? genreIds,
    final int? id,
    final String? originalLanguage,
    final String? originalTitle,
    final String? overview,
    final double? popularity,
    final String? posterPath,
    final String? releaseDate,
    final String? title,
    final bool? video,
    final double? voteAverage,
    final int? voteCount,
  }) = _NowPlayingResultEntity;
}
