import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/pages/search_page/domain/entities/search_result_entity.dart';

part 'search_data_entity.freezed.dart';

@freezed
class SearchDataEntity with _$SearchDataEntity {
  const factory SearchDataEntity({
    final int? page,
    final List<SearchResultEntity>? results,
  }) = _SearchDataEntity;
}
