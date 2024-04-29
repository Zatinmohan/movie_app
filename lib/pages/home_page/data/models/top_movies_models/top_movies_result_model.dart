// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_movies_result_model.freezed.dart';
part 'top_movies_result_model.g.dart';

@freezed
class TopMoviesResultModel with _$TopMoviesResultModel {
  const factory TopMoviesResultModel({
    final bool? adult,
    @JsonKey(name: "backdrop_path") final String? backdropPath,
    @JsonKey(name: "genre_ids") final List<int>? genreIds,
    final int? id,
    @JsonKey(name: "original_language") final String? originalLanguage,
    @JsonKey(name: "original_title") final String? originalTitle,
    final String? overview,
    final double? popularity,
    @JsonKey(name: "poster_path") final String? posterPath,
    @JsonKey(name: "release_date") final String? releaseDate,
    final String? title,
    final bool? video,
    @JsonKey(name: "vote_average") final double? voteAverage,
    @JsonKey(name: "vote_count") final int? voteCount,
  }) = _TopmoviesResultModel;

  factory TopMoviesResultModel.fromJson(Map<String, dynamic> json) =>
      _$TopMoviesResultModelFromJson(json);
}
