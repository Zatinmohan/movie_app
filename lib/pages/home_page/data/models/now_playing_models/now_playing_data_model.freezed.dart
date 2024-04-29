// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NowPlayingDataModel _$NowPlayingDataModelFromJson(Map<String, dynamic> json) {
  return _NowPlayingDataModel.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingDataModel {
  NowPlayingDateRangeModel? get dates => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<NowPlayingResultModel>? get results =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingDataModelCopyWith<NowPlayingDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingDataModelCopyWith<$Res> {
  factory $NowPlayingDataModelCopyWith(
          NowPlayingDataModel value, $Res Function(NowPlayingDataModel) then) =
      _$NowPlayingDataModelCopyWithImpl<$Res, NowPlayingDataModel>;
  @useResult
  $Res call(
      {NowPlayingDateRangeModel? dates,
      int? page,
      List<NowPlayingResultModel>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});

  $NowPlayingDateRangeModelCopyWith<$Res>? get dates;
}

/// @nodoc
class _$NowPlayingDataModelCopyWithImpl<$Res, $Val extends NowPlayingDataModel>
    implements $NowPlayingDataModelCopyWith<$Res> {
  _$NowPlayingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as NowPlayingDateRangeModel?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResultModel>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NowPlayingDateRangeModelCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $NowPlayingDateRangeModelCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NowPlayingDataModelImplCopyWith<$Res>
    implements $NowPlayingDataModelCopyWith<$Res> {
  factory _$$NowPlayingDataModelImplCopyWith(_$NowPlayingDataModelImpl value,
          $Res Function(_$NowPlayingDataModelImpl) then) =
      __$$NowPlayingDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NowPlayingDateRangeModel? dates,
      int? page,
      List<NowPlayingResultModel>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});

  @override
  $NowPlayingDateRangeModelCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$NowPlayingDataModelImplCopyWithImpl<$Res>
    extends _$NowPlayingDataModelCopyWithImpl<$Res, _$NowPlayingDataModelImpl>
    implements _$$NowPlayingDataModelImplCopyWith<$Res> {
  __$$NowPlayingDataModelImplCopyWithImpl(_$NowPlayingDataModelImpl _value,
      $Res Function(_$NowPlayingDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$NowPlayingDataModelImpl(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as NowPlayingDateRangeModel?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResultModel>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingDataModelImpl implements _NowPlayingDataModel {
  const _$NowPlayingDataModelImpl(
      {this.dates,
      this.page,
      final List<NowPlayingResultModel>? results,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _results = results;

  factory _$NowPlayingDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingDataModelImplFromJson(json);

  @override
  final NowPlayingDateRangeModel? dates;
  @override
  final int? page;
  final List<NowPlayingResultModel>? _results;
  @override
  List<NowPlayingResultModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;

  @override
  String toString() {
    return 'NowPlayingDataModel(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingDataModelImpl &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingDataModelImplCopyWith<_$NowPlayingDataModelImpl> get copyWith =>
      __$$NowPlayingDataModelImplCopyWithImpl<_$NowPlayingDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingDataModelImplToJson(
      this,
    );
  }
}

abstract class _NowPlayingDataModel implements NowPlayingDataModel {
  const factory _NowPlayingDataModel(
          {final NowPlayingDateRangeModel? dates,
          final int? page,
          final List<NowPlayingResultModel>? results,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$NowPlayingDataModelImpl;

  factory _NowPlayingDataModel.fromJson(Map<String, dynamic> json) =
      _$NowPlayingDataModelImpl.fromJson;

  @override
  NowPlayingDateRangeModel? get dates;
  @override
  int? get page;
  @override
  List<NowPlayingResultModel>? get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$NowPlayingDataModelImplCopyWith<_$NowPlayingDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
