// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NowPlayingDataModelImpl _$$NowPlayingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NowPlayingDataModelImpl(
      dates: json['dates'] == null
          ? null
          : NowPlayingDateRangeModel.fromJson(
              json['dates'] as Map<String, dynamic>),
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map(
              (e) => NowPlayingResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NowPlayingDataModelImplToJson(
        _$NowPlayingDataModelImpl instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
