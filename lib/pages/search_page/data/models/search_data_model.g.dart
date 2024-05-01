// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchMovieDataModelImpl _$$SearchMovieDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchMovieDataModelImpl(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map(
              (e) => SearchMovieResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchMovieDataModelImplToJson(
        _$SearchMovieDataModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
