// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_movies_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopMoviesDataModelImpl _$$TopMoviesDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopMoviesDataModelImpl(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TopMoviesResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopMoviesDataModelImplToJson(
        _$TopMoviesDataModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
