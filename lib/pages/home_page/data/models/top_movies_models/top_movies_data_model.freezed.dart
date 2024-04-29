// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_movies_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopMoviesDataModel _$TopMoviesDataModelFromJson(Map<String, dynamic> json) {
  return _TopMoviesDataModel.fromJson(json);
}

/// @nodoc
mixin _$TopMoviesDataModel {
  int? get page => throw _privateConstructorUsedError;
  List<TopMoviesResultModel>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopMoviesDataModelCopyWith<TopMoviesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopMoviesDataModelCopyWith<$Res> {
  factory $TopMoviesDataModelCopyWith(
          TopMoviesDataModel value, $Res Function(TopMoviesDataModel) then) =
      _$TopMoviesDataModelCopyWithImpl<$Res, TopMoviesDataModel>;
  @useResult
  $Res call(
      {int? page,
      List<TopMoviesResultModel>? results,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "total_results") int? totalResults});
}

/// @nodoc
class _$TopMoviesDataModelCopyWithImpl<$Res, $Val extends TopMoviesDataModel>
    implements $TopMoviesDataModelCopyWith<$Res> {
  _$TopMoviesDataModelCopyWithImpl(this._value, this._then);

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
              as List<TopMoviesResultModel>?,
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
abstract class _$$TopMoviesDataModelImplCopyWith<$Res>
    implements $TopMoviesDataModelCopyWith<$Res> {
  factory _$$TopMoviesDataModelImplCopyWith(_$TopMoviesDataModelImpl value,
          $Res Function(_$TopMoviesDataModelImpl) then) =
      __$$TopMoviesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<TopMoviesResultModel>? results,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "total_results") int? totalResults});
}

/// @nodoc
class __$$TopMoviesDataModelImplCopyWithImpl<$Res>
    extends _$TopMoviesDataModelCopyWithImpl<$Res, _$TopMoviesDataModelImpl>
    implements _$$TopMoviesDataModelImplCopyWith<$Res> {
  __$$TopMoviesDataModelImplCopyWithImpl(_$TopMoviesDataModelImpl _value,
      $Res Function(_$TopMoviesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$TopMoviesDataModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TopMoviesResultModel>?,
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
class _$TopMoviesDataModelImpl implements _TopMoviesDataModel {
  const _$TopMoviesDataModelImpl(
      {this.page,
      final List<TopMoviesResultModel>? results,
      @JsonKey(name: "total_pages") this.totalPages,
      @JsonKey(name: "total_results") this.totalResults})
      : _results = results;

  factory _$TopMoviesDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopMoviesDataModelImplFromJson(json);

  @override
  final int? page;
  final List<TopMoviesResultModel>? _results;
  @override
  List<TopMoviesResultModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;
  @override
  @JsonKey(name: "total_results")
  final int? totalResults;

  @override
  String toString() {
    return 'TopMoviesDataModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopMoviesDataModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopMoviesDataModelImplCopyWith<_$TopMoviesDataModelImpl> get copyWith =>
      __$$TopMoviesDataModelImplCopyWithImpl<_$TopMoviesDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopMoviesDataModelImplToJson(
      this,
    );
  }
}

abstract class _TopMoviesDataModel implements TopMoviesDataModel {
  const factory _TopMoviesDataModel(
          {final int? page,
          final List<TopMoviesResultModel>? results,
          @JsonKey(name: "total_pages") final int? totalPages,
          @JsonKey(name: "total_results") final int? totalResults}) =
      _$TopMoviesDataModelImpl;

  factory _TopMoviesDataModel.fromJson(Map<String, dynamic> json) =
      _$TopMoviesDataModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<TopMoviesResultModel>? get results;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;
  @override
  @JsonKey(name: "total_results")
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$TopMoviesDataModelImplCopyWith<_$TopMoviesDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
