// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NowPlayingDataEntity {
  NowPlayingDateRangeEntity? get dates => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<NowPlayingResultEntity>? get results =>
      throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NowPlayingDataEntityCopyWith<NowPlayingDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingDataEntityCopyWith<$Res> {
  factory $NowPlayingDataEntityCopyWith(NowPlayingDataEntity value,
          $Res Function(NowPlayingDataEntity) then) =
      _$NowPlayingDataEntityCopyWithImpl<$Res, NowPlayingDataEntity>;
  @useResult
  $Res call(
      {NowPlayingDateRangeEntity? dates,
      int? page,
      List<NowPlayingResultEntity>? results,
      int? totalPages,
      int? totalResults});

  $NowPlayingDateRangeEntityCopyWith<$Res>? get dates;
}

/// @nodoc
class _$NowPlayingDataEntityCopyWithImpl<$Res,
        $Val extends NowPlayingDataEntity>
    implements $NowPlayingDataEntityCopyWith<$Res> {
  _$NowPlayingDataEntityCopyWithImpl(this._value, this._then);

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
              as NowPlayingDateRangeEntity?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResultEntity>?,
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
  $NowPlayingDateRangeEntityCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $NowPlayingDateRangeEntityCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NowPlayingDataEntityImplCopyWith<$Res>
    implements $NowPlayingDataEntityCopyWith<$Res> {
  factory _$$NowPlayingDataEntityImplCopyWith(_$NowPlayingDataEntityImpl value,
          $Res Function(_$NowPlayingDataEntityImpl) then) =
      __$$NowPlayingDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NowPlayingDateRangeEntity? dates,
      int? page,
      List<NowPlayingResultEntity>? results,
      int? totalPages,
      int? totalResults});

  @override
  $NowPlayingDateRangeEntityCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$NowPlayingDataEntityImplCopyWithImpl<$Res>
    extends _$NowPlayingDataEntityCopyWithImpl<$Res, _$NowPlayingDataEntityImpl>
    implements _$$NowPlayingDataEntityImplCopyWith<$Res> {
  __$$NowPlayingDataEntityImplCopyWithImpl(_$NowPlayingDataEntityImpl _value,
      $Res Function(_$NowPlayingDataEntityImpl) _then)
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
    return _then(_$NowPlayingDataEntityImpl(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as NowPlayingDateRangeEntity?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResultEntity>?,
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

class _$NowPlayingDataEntityImpl implements _NowPlayingDataEntity {
  const _$NowPlayingDataEntityImpl(
      {this.dates,
      this.page,
      final List<NowPlayingResultEntity>? results,
      this.totalPages,
      this.totalResults})
      : _results = results;

  @override
  final NowPlayingDateRangeEntity? dates;
  @override
  final int? page;
  final List<NowPlayingResultEntity>? _results;
  @override
  List<NowPlayingResultEntity>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'NowPlayingDataEntity(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingDataEntityImpl &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingDataEntityImplCopyWith<_$NowPlayingDataEntityImpl>
      get copyWith =>
          __$$NowPlayingDataEntityImplCopyWithImpl<_$NowPlayingDataEntityImpl>(
              this, _$identity);
}

abstract class _NowPlayingDataEntity implements NowPlayingDataEntity {
  const factory _NowPlayingDataEntity(
      {final NowPlayingDateRangeEntity? dates,
      final int? page,
      final List<NowPlayingResultEntity>? results,
      final int? totalPages,
      final int? totalResults}) = _$NowPlayingDataEntityImpl;

  @override
  NowPlayingDateRangeEntity? get dates;
  @override
  int? get page;
  @override
  List<NowPlayingResultEntity>? get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$NowPlayingDataEntityImplCopyWith<_$NowPlayingDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
