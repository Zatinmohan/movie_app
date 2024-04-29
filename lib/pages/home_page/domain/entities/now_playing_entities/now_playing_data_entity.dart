import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_date_range_entity.dart';
import 'package:movie_app/pages/home_page/domain/entities/now_playing_entities/now_playing_result_entity.dart';

part 'now_playing_data_entity.freezed.dart';

@freezed
class NowPlayingDataEntity with _$NowPlayingDataEntity {
  const factory NowPlayingDataEntity({
    final NowPlayingDateRangeEntity? dates,
    final int? page,
    final List<NowPlayingResultEntity>? results,
    final int? totalPages,
    final int? totalResults,
  }) = _NowPlayingDataEntity;
}
