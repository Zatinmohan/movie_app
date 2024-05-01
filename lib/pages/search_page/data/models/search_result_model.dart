// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';

@freezed
class SearchMovieResultModel with _$SearchMovieResultModel {
  const factory SearchMovieResultModel({
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
  }) = _SearchMovieResultModel;

  factory SearchMovieResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieResultModelFromJson(json);
}
