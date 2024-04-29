// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/data/models/now_playing_models/now_playing_date_range_model.dart';
import 'package:movie_app/pages/home_page/data/models/now_playing_models/now_playing_result_model.dart';

part 'now_playing_data_model.freezed.dart';
part 'now_playing_data_model.g.dart';

@freezed
class NowPlayingDataModel with _$NowPlayingDataModel {
  const factory NowPlayingDataModel({
    final NowPlayingDateRangeModel? dates,
    final int? page,
    final List<NowPlayingResultModel>? results,
    @JsonKey(name: 'total_pages') final int? totalPages,
    @JsonKey(name: 'total_results') final int? totalResults,
  }) = _NowPlayingDataModel;

  factory NowPlayingDataModel.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingDataModelFromJson(json);
}
