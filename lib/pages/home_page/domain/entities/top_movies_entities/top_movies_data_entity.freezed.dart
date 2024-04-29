// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_movies_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopMoviesDataEntity {
  int? get page => throw _privateConstructorUsedError;
  List<TopMoviesResultEntity>? get results =>
      throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopMoviesDataEntityCopyWith<TopMoviesDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopMoviesDataEntityCopyWith<$Res> {
  factory $TopMoviesDataEntityCopyWith(
          TopMoviesDataEntity value, $Res Function(TopMoviesDataEntity) then) =
      _$TopMoviesDataEntityCopyWithImpl<$Res, TopMoviesDataEntity>;
  @useResult
  $Res call(
      {int? page,
      List<TopMoviesResultEntity>? results,
      int? totalPages,
      int? totalResults});
}

/// @nodoc
class _$TopMoviesDataEntityCopyWithImpl<$Res, $Val extends TopMoviesDataEntity>
    implements $TopMoviesDataEntityCopyWith<$Res> {
  _$TopMoviesDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TopMoviesResultEntity>?,
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
}

/// @nodoc
abstract class _$$TopMoviesDataEntityImplCopyWith<$Res>
    implements $TopMoviesDataEntityCopyWith<$Res> {
  factory _$$TopMoviesDataEntityImplCopyWith(_$TopMoviesDataEntityImpl value,
          $Res Function(_$TopMoviesDataEntityImpl) then) =
      __$$TopMoviesDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<TopMoviesResultEntity>? results,
      int? totalPages,
      int? totalResults});
}

/// @nodoc
class __$$TopMoviesDataEntityImplCopyWithImpl<$Res>
    extends _$TopMoviesDataEntityCopyWithImpl<$Res, _$TopMoviesDataEntityImpl>
    implements _$$TopMoviesDataEntityImplCopyWith<$Res> {
  __$$TopMoviesDataEntityImplCopyWithImpl(_$TopMoviesDataEntityImpl _value,
      $Res Function(_$TopMoviesDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$TopMoviesDataEntityImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TopMoviesResultEntity>?,
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

class _$TopMoviesDataEntityImpl implements _TopMoviesDataEntity {
  const _$TopMoviesDataEntityImpl(
      {this.page,
      final List<TopMoviesResultEntity>? results,
      this.totalPages,
      this.totalResults})
      : _results = results;

  @override
  final int? page;
  final List<TopMoviesResultEntity>? _results;
  @override
  List<TopMoviesResultEntity>? get results {
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
    return 'TopMoviesDataEntity(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopMoviesDataEntityImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopMoviesDataEntityImplCopyWith<_$TopMoviesDataEntityImpl> get copyWith =>
      __$$TopMoviesDataEntityImplCopyWithImpl<_$TopMoviesDataEntityImpl>(
          this, _$identity);
}

abstract class _TopMoviesDataEntity implements TopMoviesDataEntity {
  const factory _TopMoviesDataEntity(
      {final int? page,
      final List<TopMoviesResultEntity>? results,
      final int? totalPages,
      final int? totalResults}) = _$TopMoviesDataEntityImpl;

  @override
  int? get page;
  @override
  List<TopMoviesResultEntity>? get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$TopMoviesDataEntityImplCopyWith<_$TopMoviesDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
