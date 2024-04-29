import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing_date_range_model.freezed.dart';
part 'now_playing_date_range_model.g.dart';

@freezed
class NowPlayingDateRangeModel with _$NowPlayingDateRangeModel {
  const factory NowPlayingDateRangeModel({
    final String? maximum,
    final String? minimum,
  }) = _NowPlayingDateRangeModel;

  factory NowPlayingDateRangeModel.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingDateRangeModelFromJson(json);
}
