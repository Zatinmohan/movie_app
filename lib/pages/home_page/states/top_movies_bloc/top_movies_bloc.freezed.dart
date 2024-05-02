// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopMoviesEvents {
  int get pageKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchTopMovies,
    required TResult Function(int pageKey) fetchMoreMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchTopMovies,
    TResult? Function(int pageKey)? fetchMoreMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchTopMovies,
    TResult Function(int pageKey)? fetchMoreMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopMoviesEvents value) fetchTopMovies,
    required TResult Function(_FetchMoreMovies value) fetchMoreMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopMoviesEvents value)? fetchTopMovies,
    TResult? Function(_FetchMoreMovies value)? fetchMoreMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopMoviesEvents value)? fetchTopMovies,
    TResult Function(_FetchMoreMovies value)? fetchMoreMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopMoviesEventsCopyWith<TopMoviesEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopMoviesEventsCopyWith<$Res> {
  factory $TopMoviesEventsCopyWith(
          TopMoviesEvents value, $Res Function(TopMoviesEvents) then) =
      _$TopMoviesEventsCopyWithImpl<$Res, TopMoviesEvents>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class _$TopMoviesEventsCopyWithImpl<$Res, $Val extends TopMoviesEvents>
    implements $TopMoviesEventsCopyWith<$Res> {
  _$TopMoviesEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_value.copyWith(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopMoviesEventsImplCopyWith<$Res>
    implements $TopMoviesEventsCopyWith<$Res> {
  factory _$$TopMoviesEventsImplCopyWith(_$TopMoviesEventsImpl value,
          $Res Function(_$TopMoviesEventsImpl) then) =
      __$$TopMoviesEventsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$TopMoviesEventsImplCopyWithImpl<$Res>
    extends _$TopMoviesEventsCopyWithImpl<$Res, _$TopMoviesEventsImpl>
    implements _$$TopMoviesEventsImplCopyWith<$Res> {
  __$$TopMoviesEventsImplCopyWithImpl(
      _$TopMoviesEventsImpl _value, $Res Function(_$TopMoviesEventsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$TopMoviesEventsImpl(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TopMoviesEventsImpl implements _TopMoviesEvents {
  const _$TopMoviesEventsImpl({required this.pageKey});

  @override
  final int pageKey;

  @override
  String toString() {
    return 'TopMoviesEvents.fetchTopMovies(pageKey: $pageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopMoviesEventsImpl &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopMoviesEventsImplCopyWith<_$TopMoviesEventsImpl> get copyWith =>
      __$$TopMoviesEventsImplCopyWithImpl<_$TopMoviesEventsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchTopMovies,
    required TResult Function(int pageKey) fetchMoreMovies,
  }) {
    return fetchTopMovies(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchTopMovies,
    TResult? Function(int pageKey)? fetchMoreMovies,
  }) {
    return fetchTopMovies?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchTopMovies,
    TResult Function(int pageKey)? fetchMoreMovies,
    required TResult orElse(),
  }) {
    if (fetchTopMovies != null) {
      return fetchTopMovies(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopMoviesEvents value) fetchTopMovies,
    required TResult Function(_FetchMoreMovies value) fetchMoreMovies,
  }) {
    return fetchTopMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopMoviesEvents value)? fetchTopMovies,
    TResult? Function(_FetchMoreMovies value)? fetchMoreMovies,
  }) {
    return fetchTopMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopMoviesEvents value)? fetchTopMovies,
    TResult Function(_FetchMoreMovies value)? fetchMoreMovies,
    required TResult orElse(),
  }) {
    if (fetchTopMovies != null) {
      return fetchTopMovies(this);
    }
    return orElse();
  }
}

abstract class _TopMoviesEvents implements TopMoviesEvents {
  const factory _TopMoviesEvents({required final int pageKey}) =
      _$TopMoviesEventsImpl;

  @override
  int get pageKey;
  @override
  @JsonKey(ignore: true)
  _$$TopMoviesEventsImplCopyWith<_$TopMoviesEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreMoviesImplCopyWith<$Res>
    implements $TopMoviesEventsCopyWith<$Res> {
  factory _$$FetchMoreMoviesImplCopyWith(_$FetchMoreMoviesImpl value,
          $Res Function(_$FetchMoreMoviesImpl) then) =
      __$$FetchMoreMoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$FetchMoreMoviesImplCopyWithImpl<$Res>
    extends _$TopMoviesEventsCopyWithImpl<$Res, _$FetchMoreMoviesImpl>
    implements _$$FetchMoreMoviesImplCopyWith<$Res> {
  __$$FetchMoreMoviesImplCopyWithImpl(
      _$FetchMoreMoviesImpl _value, $Res Function(_$FetchMoreMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$FetchMoreMoviesImpl(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchMoreMoviesImpl implements _FetchMoreMovies {
  const _$FetchMoreMoviesImpl({required this.pageKey});

  @override
  final int pageKey;

  @override
  String toString() {
    return 'TopMoviesEvents.fetchMoreMovies(pageKey: $pageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreMoviesImpl &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreMoviesImplCopyWith<_$FetchMoreMoviesImpl> get copyWith =>
      __$$FetchMoreMoviesImplCopyWithImpl<_$FetchMoreMoviesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchTopMovies,
    required TResult Function(int pageKey) fetchMoreMovies,
  }) {
    return fetchMoreMovies(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchTopMovies,
    TResult? Function(int pageKey)? fetchMoreMovies,
  }) {
    return fetchMoreMovies?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchTopMovies,
    TResult Function(int pageKey)? fetchMoreMovies,
    required TResult orElse(),
  }) {
    if (fetchMoreMovies != null) {
      return fetchMoreMovies(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopMoviesEvents value) fetchTopMovies,
    required TResult Function(_FetchMoreMovies value) fetchMoreMovies,
  }) {
    return fetchMoreMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopMoviesEvents value)? fetchTopMovies,
    TResult? Function(_FetchMoreMovies value)? fetchMoreMovies,
  }) {
    return fetchMoreMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopMoviesEvents value)? fetchTopMovies,
    TResult Function(_FetchMoreMovies value)? fetchMoreMovies,
    required TResult orElse(),
  }) {
    if (fetchMoreMovies != null) {
      return fetchMoreMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreMovies implements TopMoviesEvents {
  const factory _FetchMoreMovies({required final int pageKey}) =
      _$FetchMoreMoviesImpl;

  @override
  int get pageKey;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreMoviesImplCopyWith<_$FetchMoreMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopMoviesStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopMoviesResultEntity> data) loaded,
    required TResult Function() loadingMoreMovies,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopMoviesResultEntity> data)? loaded,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopMoviesResultEntity> data)? loaded,
    TResult Function()? loadingMoreMovies,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopMoviesStatesCopyWith<$Res> {
  factory $TopMoviesStatesCopyWith(
          TopMoviesStates value, $Res Function(TopMoviesStates) then) =
      _$TopMoviesStatesCopyWithImpl<$Res, TopMoviesStates>;
}

/// @nodoc
class _$TopMoviesStatesCopyWithImpl<$Res, $Val extends TopMoviesStates>
    implements $TopMoviesStatesCopyWith<$Res> {
  _$TopMoviesStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TopMoviesStatesCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TopMoviesStates.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopMoviesResultEntity> data) loaded,
    required TResult Function() loadingMoreMovies,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopMoviesResultEntity> data)? loaded,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopMoviesResultEntity> data)? loaded,
    TResult Function()? loadingMoreMovies,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TopMoviesStates {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TopMoviesStatesCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TopMoviesStates.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopMoviesResultEntity> data) loaded,
    required TResult Function() loadingMoreMovies,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopMoviesResultEntity> data)? loaded,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopMoviesResultEntity> data)? loaded,
    TResult Function()? loadingMoreMovies,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TopMoviesStates {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TopMoviesResultEntity> data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TopMoviesStatesCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopMoviesResultEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<TopMoviesResultEntity> data})
      : _data = data;

  final List<TopMoviesResultEntity> _data;
  @override
  List<TopMoviesResultEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TopMoviesStates.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopMoviesResultEntity> data) loaded,
    required TResult Function() loadingMoreMovies,
    required TResult Function(String error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopMoviesResultEntity> data)? loaded,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopMoviesResultEntity> data)? loaded,
    TResult Function()? loadingMoreMovies,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TopMoviesStates {
  const factory _Loaded({required final List<TopMoviesResultEntity> data}) =
      _$LoadedImpl;

  List<TopMoviesResultEntity> get data;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMoreMoviesImplCopyWith<$Res> {
  factory _$$LoadingMoreMoviesImplCopyWith(_$LoadingMoreMoviesImpl value,
          $Res Function(_$LoadingMoreMoviesImpl) then) =
      __$$LoadingMoreMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMoreMoviesImplCopyWithImpl<$Res>
    extends _$TopMoviesStatesCopyWithImpl<$Res, _$LoadingMoreMoviesImpl>
    implements _$$LoadingMoreMoviesImplCopyWith<$Res> {
  __$$LoadingMoreMoviesImplCopyWithImpl(_$LoadingMoreMoviesImpl _value,
      $Res Function(_$LoadingMoreMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMoreMoviesImpl implements _LoadingMoreMovies {
  const _$LoadingMoreMoviesImpl();

  @override
  String toString() {
    return 'TopMoviesStates.loadingMoreMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMoreMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopMoviesResultEntity> data) loaded,
    required TResult Function() loadingMoreMovies,
    required TResult Function(String error) error,
  }) {
    return loadingMoreMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopMoviesResultEntity> data)? loaded,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(String error)? error,
  }) {
    return loadingMoreMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopMoviesResultEntity> data)? loaded,
    TResult Function()? loadingMoreMovies,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadingMoreMovies != null) {
      return loadingMoreMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Error value) error,
  }) {
    return loadingMoreMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Error value)? error,
  }) {
    return loadingMoreMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMoreMovies != null) {
      return loadingMoreMovies(this);
    }
    return orElse();
  }
}

abstract class _LoadingMoreMovies implements TopMoviesStates {
  const factory _LoadingMoreMovies() = _$LoadingMoreMoviesImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TopMoviesStatesCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'TopMoviesStates.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopMoviesResultEntity> data) loaded,
    required TResult Function() loadingMoreMovies,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopMoviesResultEntity> data)? loaded,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopMoviesResultEntity> data)? loaded,
    TResult Function()? loadingMoreMovies,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TopMoviesStates {
  const factory _Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
