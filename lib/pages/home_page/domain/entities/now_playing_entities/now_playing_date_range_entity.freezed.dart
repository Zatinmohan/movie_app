// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_date_range_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NowPlayingDateRangeEntity {
  String? get maximum => throw _privateConstructorUsedError;
  String? get minimum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NowPlayingDateRangeEntityCopyWith<NowPlayingDateRangeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingDateRangeEntityCopyWith<$Res> {
  factory $NowPlayingDateRangeEntityCopyWith(NowPlayingDateRangeEntity value,
          $Res Function(NowPlayingDateRangeEntity) then) =
      _$NowPlayingDateRangeEntityCopyWithImpl<$Res, NowPlayingDateRangeEntity>;
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class _$NowPlayingDateRangeEntityCopyWithImpl<$Res,
        $Val extends NowPlayingDateRangeEntity>
    implements $NowPlayingDateRangeEntityCopyWith<$Res> {
  _$NowPlayingDateRangeEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$NowPlayingDateRangeEntityImplCopyWith<$Res>
    implements $NowPlayingDateRangeEntityCopyWith<$Res> {
  factory _$$NowPlayingDateRangeEntityImplCopyWith(
          _$NowPlayingDateRangeEntityImpl value,
          $Res Function(_$NowPlayingDateRangeEntityImpl) then) =
      __$$NowPlayingDateRangeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? maximum, String? minimum});
}

/// @nodoc
class __$$NowPlayingDateRangeEntityImplCopyWithImpl<$Res>
    extends _$NowPlayingDateRangeEntityCopyWithImpl<$Res,
        _$NowPlayingDateRangeEntityImpl>
    implements _$$NowPlayingDateRangeEntityImplCopyWith<$Res> {
  __$$NowPlayingDateRangeEntityImplCopyWithImpl(
      _$NowPlayingDateRangeEntityImpl _value,
      $Res Function(_$NowPlayingDateRangeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$NowPlayingDateRangeEntityImpl(
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

class _$NowPlayingDateRangeEntityImpl implements _NowPlayingDateRangeEntity {
  const _$NowPlayingDateRangeEntityImpl({this.maximum, this.minimum});

  @override
  final String? maximum;
  @override
  final String? minimum;

  @override
  String toString() {
    return 'NowPlayingDateRangeEntity(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingDateRangeEntityImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingDateRangeEntityImplCopyWith<_$NowPlayingDateRangeEntityImpl>
      get copyWith => __$$NowPlayingDateRangeEntityImplCopyWithImpl<
          _$NowPlayingDateRangeEntityImpl>(this, _$identity);
}

abstract class _NowPlayingDateRangeEntity implements NowPlayingDateRangeEntity {
  const factory _NowPlayingDateRangeEntity(
      {final String? maximum,
      final String? minimum}) = _$NowPlayingDateRangeEntityImpl;

  @override
  String? get maximum;
  @override
  String? get minimum;
  @override
  @JsonKey(ignore: true)
  _$$NowPlayingDateRangeEntityImplCopyWith<_$NowPlayingDateRangeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
