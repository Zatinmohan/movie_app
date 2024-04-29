// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_date_range_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NowPlayingDateRangeModel _$NowPlayingDateRangeModelFromJson(
    Map<String, dynamic> json) {
  return _NowPlayingDateRangeModel.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingDateRangeModel {
  String? get maximum => throw _privateConstructorUsedError;
  String? get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingDateRangeModelCopyWith<NowPlayingDateRangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingDateRangeModelCopyWith<$Res> {
  factory $NowPlayingDateRangeModelCopyWith(NowPlayingDateRangeModel value,
          $Res Function(NowPlayingDateRangeModel) then) =
      _$NowPlayingDateRangeModelCopyWithImpl<$Res, NowPlayingDateRangeModel>;
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class _$NowPlayingDateRangeModelCopyWithImpl<$Res,
        $Val extends NowPlayingDateRangeModel>
    implements $NowPlayingDateRangeModelCopyWith<$Res> {
  _$NowPlayingDateRangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NowPlayingDateRangeModelImplCopyWith<$Res>
    implements $NowPlayingDateRangeModelCopyWith<$Res> {
  factory _$$NowPlayingDateRangeModelImplCopyWith(
          _$NowPlayingDateRangeModelImpl value,
          $Res Function(_$NowPlayingDateRangeModelImpl) then) =
      __$$NowPlayingDateRangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class __$$NowPlayingDateRangeModelImplCopyWithImpl<$Res>
    extends _$NowPlayingDateRangeModelCopyWithImpl<$Res,
        _$NowPlayingDateRangeModelImpl>
    implements _$$NowPlayingDateRangeModelImplCopyWith<$Res> {
  __$$NowPlayingDateRangeModelImplCopyWithImpl(
      _$NowPlayingDateRangeModelImpl _value,
      $Res Function(_$NowPlayingDateRangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$NowPlayingDateRangeModelImpl(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingDateRangeModelImpl implements _NowPlayingDateRangeModel {
  const _$NowPlayingDateRangeModelImpl({this.maximum, this.minimum});

  factory _$NowPlayingDateRangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingDateRangeModelImplFromJson(json);

  @override
  final String? maximum;
  @override
  final String? minimum;

  @override
  String toString() {
    return 'NowPlayingDateRangeModel(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingDateRangeModelImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingDateRangeModelImplCopyWith<_$NowPlayingDateRangeModelImpl>
      get copyWith => __$$NowPlayingDateRangeModelImplCopyWithImpl<
          _$NowPlayingDateRangeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingDateRangeModelImplToJson(
      this,
    );
  }
}

abstract class _NowPlayingDateRangeModel implements NowPlayingDateRangeModel {
  const factory _NowPlayingDateRangeModel(
      {final String? maximum,
      final String? minimum}) = _$NowPlayingDateRangeModelImpl;

  factory _NowPlayingDateRangeModel.fromJson(Map<String, dynamic> json) =
      _$NowPlayingDateRangeModelImpl.fromJson;

  @override
  String? get maximum;
  @override
  String? get minimum;
  @override
  @JsonKey(ignore: true)
  _$$NowPlayingDateRangeModelImplCopyWith<_$NowPlayingDateRangeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
