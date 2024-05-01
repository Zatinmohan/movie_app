// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchDataEntity {
  int? get page => throw _privateConstructorUsedError;
  List<SearchResultEntity>? get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDataEntityCopyWith<SearchDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataEntityCopyWith<$Res> {
  factory $SearchDataEntityCopyWith(
          SearchDataEntity value, $Res Function(SearchDataEntity) then) =
      _$SearchDataEntityCopyWithImpl<$Res, SearchDataEntity>;
  @useResult
  $Res call({int? page, List<SearchResultEntity>? results});
}

/// @nodoc
class _$SearchDataEntityCopyWithImpl<$Res, $Val extends SearchDataEntity>
    implements $SearchDataEntityCopyWith<$Res> {
  _$SearchDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDataEntityImplCopyWith<$Res>
    implements $SearchDataEntityCopyWith<$Res> {
  factory _$$SearchDataEntityImplCopyWith(_$SearchDataEntityImpl value,
          $Res Function(_$SearchDataEntityImpl) then) =
      __$$SearchDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, List<SearchResultEntity>? results});
}

/// @nodoc
class __$$SearchDataEntityImplCopyWithImpl<$Res>
    extends _$SearchDataEntityCopyWithImpl<$Res, _$SearchDataEntityImpl>
    implements _$$SearchDataEntityImplCopyWith<$Res> {
  __$$SearchDataEntityImplCopyWithImpl(_$SearchDataEntityImpl _value,
      $Res Function(_$SearchDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_$SearchDataEntityImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>?,
    ));
  }
}

/// @nodoc

class _$SearchDataEntityImpl implements _SearchDataEntity {
  const _$SearchDataEntityImpl(
      {this.page, final List<SearchResultEntity>? results})
      : _results = results;

  @override
  final int? page;
  final List<SearchResultEntity>? _results;
  @override
  List<SearchResultEntity>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchDataEntity(page: $page, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDataEntityImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDataEntityImplCopyWith<_$SearchDataEntityImpl> get copyWith =>
      __$$SearchDataEntityImplCopyWithImpl<_$SearchDataEntityImpl>(
          this, _$identity);
}

abstract class _SearchDataEntity implements SearchDataEntity {
  const factory _SearchDataEntity(
      {final int? page,
      final List<SearchResultEntity>? results}) = _$SearchDataEntityImpl;

  @override
  int? get page;
  @override
  List<SearchResultEntity>? get results;
  @override
  @JsonKey(ignore: true)
  _$$SearchDataEntityImplCopyWith<_$SearchDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
