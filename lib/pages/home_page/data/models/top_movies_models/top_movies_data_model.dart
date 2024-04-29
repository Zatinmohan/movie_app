// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/data/models/top_movies_models/top_movies_result_model.dart';

part 'top_movies_data_model.freezed.dart';
part 'top_movies_data_model.g.dart';

@freezed
class TopMoviesDataModel with _$TopMoviesDataModel {
  const factory TopMoviesDataModel({
    final int? page,
    final List<TopMoviesResultModel>? results,
    @JsonKey(name: "total_pages") final int? totalPages,
    @JsonKey(name: "total_results") final int? totalResults,
  }) = _TopMoviesDataModel;

  factory TopMoviesDataModel.fromJson(Map<String,dynamic> json) => _$TopMoviesDataModelFromJson(json);
}
