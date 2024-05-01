// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchMovieDataModel _$SearchMovieDataModelFromJson(Map<String, dynamic> json) {
  return _SearchMovieDataModel.fromJson(json);
}

/// @nodoc
mixin _$SearchMovieDataModel {
  int? get page => throw _privateConstructorUsedError;
  List<SearchMovieResultModel>? get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchMovieDataModelCopyWith<SearchMovieDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieDataModelCopyWith<$Res> {
  factory $SearchMovieDataModelCopyWith(SearchMovieDataModel value,
          $Res Function(SearchMovieDataModel) then) =
      _$SearchMovieDataModelCopyWithImpl<$Res, SearchMovieDataModel>;
  @useResult
  $Res call({int? page, List<SearchMovieResultModel>? results});
}

/// @nodoc
class _$SearchMovieDataModelCopyWithImpl<$Res,
        $Val extends SearchMovieDataModel>
    implements $SearchMovieDataModelCopyWith<$Res> {
  _$SearchMovieDataModelCopyWithImpl(this._value, this._then);

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
              as List<SearchMovieResultModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchMovieDataModelImplCopyWith<$Res>
    implements $SearchMovieDataModelCopyWith<$Res> {
  factory _$$SearchMovieDataModelImplCopyWith(_$SearchMovieDataModelImpl value,
          $Res Function(_$SearchMovieDataModelImpl) then) =
      __$$SearchMovieDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, List<SearchMovieResultModel>? results});
}

/// @nodoc
class __$$SearchMovieDataModelImplCopyWithImpl<$Res>
    extends _$SearchMovieDataModelCopyWithImpl<$Res, _$SearchMovieDataModelImpl>
    implements _$$SearchMovieDataModelImplCopyWith<$Res> {
  __$$SearchMovieDataModelImplCopyWithImpl(_$SearchMovieDataModelImpl _value,
      $Res Function(_$SearchMovieDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_$SearchMovieDataModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchMovieResultModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchMovieDataModelImpl implements _SearchMovieDataModel {
  const _$SearchMovieDataModelImpl(
      {this.page, final List<SearchMovieResultModel>? results})
      : _results = results;

  factory _$SearchMovieDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchMovieDataModelImplFromJson(json);

  @override
  final int? page;
  final List<SearchMovieResultModel>? _results;
  @override
  List<SearchMovieResultModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchMovieDataModel(page: $page, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieDataModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieDataModelImplCopyWith<_$SearchMovieDataModelImpl>
      get copyWith =>
          __$$SearchMovieDataModelImplCopyWithImpl<_$SearchMovieDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchMovieDataModelImplToJson(
      this,
    );
  }
}

abstract class _SearchMovieDataModel implements SearchMovieDataModel {
  const factory _SearchMovieDataModel(
          {final int? page, final List<SearchMovieResultModel>? results}) =
      _$SearchMovieDataModelImpl;

  factory _SearchMovieDataModel.fromJson(Map<String, dynamic> json) =
      _$SearchMovieDataModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<SearchMovieResultModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$SearchMovieDataModelImplCopyWith<_$SearchMovieDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
