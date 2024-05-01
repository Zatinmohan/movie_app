// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/search_page/data/models/search_result_model.dart';

part 'search_data_model.freezed.dart';
part 'search_data_model.g.dart';

@freezed
class SearchMovieDataModel with _$SearchMovieDataModel {
  const factory SearchMovieDataModel({
    final int? page,
    final List<SearchMovieResultModel>? results,
  }) = _SearchMovieDataModel;

  factory SearchMovieDataModel.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieDataModelFromJson(json);
}
