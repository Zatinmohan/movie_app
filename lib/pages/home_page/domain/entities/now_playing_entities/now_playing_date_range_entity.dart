import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing_date_range_entity.freezed.dart';

@freezed
class NowPlayingDateRangeEntity with _$NowPlayingDateRangeEntity {
  const factory NowPlayingDateRangeEntity({
    final String? maximum,
    final String? minimum,
  }) = _NowPlayingDateRangeEntity;
}
