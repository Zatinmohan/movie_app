// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NowPlayingMovieEvents {
  int get pageKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchNowPlayingMovies,
    required TResult Function(int pageKey) fetchMoreNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchNowPlayingMovies,
    TResult? Function(int pageKey)? fetchMoreNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchNowPlayingMovies,
    TResult Function(int pageKey)? fetchMoreNowPlayingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchNowPlayingMovies,
    required TResult Function(_FetchMoreDat value) fetchMoreNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchNowPlayingMovies,
    TResult? Function(_FetchMoreDat value)? fetchMoreNowPlayingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchNowPlayingMovies,
    TResult Function(_FetchMoreDat value)? fetchMoreNowPlayingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NowPlayingMovieEventsCopyWith<NowPlayingMovieEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingMovieEventsCopyWith<$Res> {
  factory $NowPlayingMovieEventsCopyWith(NowPlayingMovieEvents value,
          $Res Function(NowPlayingMovieEvents) then) =
      _$NowPlayingMovieEventsCopyWithImpl<$Res, NowPlayingMovieEvents>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class _$NowPlayingMovieEventsCopyWithImpl<$Res,
        $Val extends NowPlayingMovieEvents>
    implements $NowPlayingMovieEventsCopyWith<$Res> {
  _$NowPlayingMovieEventsCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchMoviesImplCopyWith<$Res>
    implements $NowPlayingMovieEventsCopyWith<$Res> {
  factory _$$FetchMoviesImplCopyWith(
          _$FetchMoviesImpl value, $Res Function(_$FetchMoviesImpl) then) =
      __$$FetchMoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$FetchMoviesImplCopyWithImpl<$Res>
    extends _$NowPlayingMovieEventsCopyWithImpl<$Res, _$FetchMoviesImpl>
    implements _$$FetchMoviesImplCopyWith<$Res> {
  __$$FetchMoviesImplCopyWithImpl(
      _$FetchMoviesImpl _value, $Res Function(_$FetchMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$FetchMoviesImpl(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchMoviesImpl implements _FetchMovies {
  const _$FetchMoviesImpl({required this.pageKey});

  @override
  final int pageKey;

  @override
  String toString() {
    return 'NowPlayingMovieEvents.fetchNowPlayingMovies(pageKey: $pageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoviesImpl &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoviesImplCopyWith<_$FetchMoviesImpl> get copyWith =>
      __$$FetchMoviesImplCopyWithImpl<_$FetchMoviesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchNowPlayingMovies,
    required TResult Function(int pageKey) fetchMoreNowPlayingMovies,
  }) {
    return fetchNowPlayingMovies(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchNowPlayingMovies,
    TResult? Function(int pageKey)? fetchMoreNowPlayingMovies,
  }) {
    return fetchNowPlayingMovies?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchNowPlayingMovies,
    TResult Function(int pageKey)? fetchMoreNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (fetchNowPlayingMovies != null) {
      return fetchNowPlayingMovies(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchNowPlayingMovies,
    required TResult Function(_FetchMoreDat value) fetchMoreNowPlayingMovies,
  }) {
    return fetchNowPlayingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchNowPlayingMovies,
    TResult? Function(_FetchMoreDat value)? fetchMoreNowPlayingMovies,
  }) {
    return fetchNowPlayingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchNowPlayingMovies,
    TResult Function(_FetchMoreDat value)? fetchMoreNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (fetchNowPlayingMovies != null) {
      return fetchNowPlayingMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchMovies implements NowPlayingMovieEvents {
  const factory _FetchMovies({required final int pageKey}) = _$FetchMoviesImpl;

  @override
  int get pageKey;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoviesImplCopyWith<_$FetchMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreDatImplCopyWith<$Res>
    implements $NowPlayingMovieEventsCopyWith<$Res> {
  factory _$$FetchMoreDatImplCopyWith(
          _$FetchMoreDatImpl value, $Res Function(_$FetchMoreDatImpl) then) =
      __$$FetchMoreDatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$FetchMoreDatImplCopyWithImpl<$Res>
    extends _$NowPlayingMovieEventsCopyWithImpl<$Res, _$FetchMoreDatImpl>
    implements _$$FetchMoreDatImplCopyWith<$Res> {
  __$$FetchMoreDatImplCopyWithImpl(
      _$FetchMoreDatImpl _value, $Res Function(_$FetchMoreDatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$FetchMoreDatImpl(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchMoreDatImpl implements _FetchMoreDat {
  const _$FetchMoreDatImpl({required this.pageKey});

  @override
  final int pageKey;

  @override
  String toString() {
    return 'NowPlayingMovieEvents.fetchMoreNowPlayingMovies(pageKey: $pageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreDatImpl &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreDatImplCopyWith<_$FetchMoreDatImpl> get copyWith =>
      __$$FetchMoreDatImplCopyWithImpl<_$FetchMoreDatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchNowPlayingMovies,
    required TResult Function(int pageKey) fetchMoreNowPlayingMovies,
  }) {
    return fetchMoreNowPlayingMovies(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchNowPlayingMovies,
    TResult? Function(int pageKey)? fetchMoreNowPlayingMovies,
  }) {
    return fetchMoreNowPlayingMovies?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchNowPlayingMovies,
    TResult Function(int pageKey)? fetchMoreNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (fetchMoreNowPlayingMovies != null) {
      return fetchMoreNowPlayingMovies(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchNowPlayingMovies,
    required TResult Function(_FetchMoreDat value) fetchMoreNowPlayingMovies,
  }) {
    return fetchMoreNowPlayingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchNowPlayingMovies,
    TResult? Function(_FetchMoreDat value)? fetchMoreNowPlayingMovies,
  }) {
    return fetchMoreNowPlayingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchNowPlayingMovies,
    TResult Function(_FetchMoreDat value)? fetchMoreNowPlayingMovies,
    required TResult orElse(),
  }) {
    if (fetchMoreNowPlayingMovies != null) {
      return fetchMoreNowPlayingMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreDat implements NowPlayingMovieEvents {
  const factory _FetchMoreDat({required final int pageKey}) =
      _$FetchMoreDatImpl;

  @override
  int get pageKey;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreDatImplCopyWith<_$FetchMoreDatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NowPlayingMoviesStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingMoreMovies,
    required TResult Function(List<NowPlayingResultEntity> data) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(List<NowPlayingResultEntity> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreMovies,
    TResult Function(List<NowPlayingResultEntity> data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingMoviesStatesCopyWith<$Res> {
  factory $NowPlayingMoviesStatesCopyWith(NowPlayingMoviesStates value,
          $Res Function(NowPlayingMoviesStates) then) =
      _$NowPlayingMoviesStatesCopyWithImpl<$Res, NowPlayingMoviesStates>;
}

/// @nodoc
class _$NowPlayingMoviesStatesCopyWithImpl<$Res,
        $Val extends NowPlayingMoviesStates>
    implements $NowPlayingMoviesStatesCopyWith<$Res> {
  _$NowPlayingMoviesStatesCopyWithImpl(this._value, this._then);

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
    extends _$NowPlayingMoviesStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NowPlayingMoviesStates.initial()';
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
    required TResult Function() loadingMoreMovies,
    required TResult Function(List<NowPlayingResultEntity> data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(List<NowPlayingResultEntity> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreMovies,
    TResult Function(List<NowPlayingResultEntity> data)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NowPlayingMoviesStates {
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
    extends _$NowPlayingMoviesStatesCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'NowPlayingMoviesStates.loading()';
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
    required TResult Function() loadingMoreMovies,
    required TResult Function(List<NowPlayingResultEntity> data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(List<NowPlayingResultEntity> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreMovies,
    TResult Function(List<NowPlayingResultEntity> data)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NowPlayingMoviesStates {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingMoreMoviesImplCopyWith<$Res> {
  factory _$$LoadingMoreMoviesImplCopyWith(_$LoadingMoreMoviesImpl value,
          $Res Function(_$LoadingMoreMoviesImpl) then) =
      __$$LoadingMoreMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMoreMoviesImplCopyWithImpl<$Res>
    extends _$NowPlayingMoviesStatesCopyWithImpl<$Res, _$LoadingMoreMoviesImpl>
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
    return 'NowPlayingMoviesStates.loadingMoreMovies()';
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
    required TResult Function() loadingMoreMovies,
    required TResult Function(List<NowPlayingResultEntity> data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loadingMoreMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(List<NowPlayingResultEntity> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loadingMoreMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreMovies,
    TResult Function(List<NowPlayingResultEntity> data)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loadingMoreMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loadingMoreMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMoreMovies != null) {
      return loadingMoreMovies(this);
    }
    return orElse();
  }
}

abstract class _LoadingMoreMovies implements NowPlayingMoviesStates {
  const factory _LoadingMoreMovies() = _$LoadingMoreMoviesImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NowPlayingResultEntity> data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$NowPlayingMoviesStatesCopyWithImpl<$Res, _$LoadedImpl>
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
              as List<NowPlayingResultEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<NowPlayingResultEntity> data})
      : _data = data;

  final List<NowPlayingResultEntity> _data;
  @override
  List<NowPlayingResultEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NowPlayingMoviesStates.loaded(data: $data)';
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
    required TResult Function() loadingMoreMovies,
    required TResult Function(List<NowPlayingResultEntity> data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(List<NowPlayingResultEntity> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreMovies,
    TResult Function(List<NowPlayingResultEntity> data)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NowPlayingMoviesStates {
  const factory _Loaded({required final List<NowPlayingResultEntity> data}) =
      _$LoadedImpl;

  List<NowPlayingResultEntity> get data;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NowPlayingMoviesStatesCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NowPlayingMoviesStates.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

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
    required TResult Function() loadingMoreMovies,
    required TResult Function(List<NowPlayingResultEntity> data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingMoreMovies,
    TResult? Function(List<NowPlayingResultEntity> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingMoreMovies,
    TResult Function(List<NowPlayingResultEntity> data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMoreMovies value) loadingMoreMovies,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMoreMovies value)? loadingMoreMovies,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NowPlayingMoviesStates {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
