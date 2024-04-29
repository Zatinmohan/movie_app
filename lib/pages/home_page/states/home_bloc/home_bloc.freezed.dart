// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchNowPlaying,
    required TResult Function() fetchTopMovies,
    required TResult Function() fetchHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchNowPlaying,
    TResult? Function()? fetchTopMovies,
    TResult? Function()? fetchHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchNowPlaying,
    TResult Function()? fetchTopMovies,
    TResult Function()? fetchHomePageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNowPlaying value) fetchNowPlaying,
    required TResult Function(_FetchTopMovies value) fetchTopMovies,
    required TResult Function(_FetchHomePageData value) fetchHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult? Function(_FetchTopMovies value)? fetchTopMovies,
    TResult? Function(_FetchHomePageData value)? fetchHomePageData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult Function(_FetchTopMovies value)? fetchTopMovies,
    TResult Function(_FetchHomePageData value)? fetchHomePageData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventsCopyWith<$Res> {
  factory $HomeEventsCopyWith(
          HomeEvents value, $Res Function(HomeEvents) then) =
      _$HomeEventsCopyWithImpl<$Res, HomeEvents>;
}

/// @nodoc
class _$HomeEventsCopyWithImpl<$Res, $Val extends HomeEvents>
    implements $HomeEventsCopyWith<$Res> {
  _$HomeEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchNowPlayingImplCopyWith<$Res> {
  factory _$$FetchNowPlayingImplCopyWith(_$FetchNowPlayingImpl value,
          $Res Function(_$FetchNowPlayingImpl) then) =
      __$$FetchNowPlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$FetchNowPlayingImplCopyWithImpl<$Res>
    extends _$HomeEventsCopyWithImpl<$Res, _$FetchNowPlayingImpl>
    implements _$$FetchNowPlayingImplCopyWith<$Res> {
  __$$FetchNowPlayingImplCopyWithImpl(
      _$FetchNowPlayingImpl _value, $Res Function(_$FetchNowPlayingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$FetchNowPlayingImpl(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchNowPlayingImpl implements _FetchNowPlaying {
  const _$FetchNowPlayingImpl({required this.pageKey});

  @override
  final int pageKey;

  @override
  String toString() {
    return 'HomeEvents.fetchNowPlaying(pageKey: $pageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchNowPlayingImpl &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchNowPlayingImplCopyWith<_$FetchNowPlayingImpl> get copyWith =>
      __$$FetchNowPlayingImplCopyWithImpl<_$FetchNowPlayingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchNowPlaying,
    required TResult Function() fetchTopMovies,
    required TResult Function() fetchHomePageData,
  }) {
    return fetchNowPlaying(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchNowPlaying,
    TResult? Function()? fetchTopMovies,
    TResult? Function()? fetchHomePageData,
  }) {
    return fetchNowPlaying?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchNowPlaying,
    TResult Function()? fetchTopMovies,
    TResult Function()? fetchHomePageData,
    required TResult orElse(),
  }) {
    if (fetchNowPlaying != null) {
      return fetchNowPlaying(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNowPlaying value) fetchNowPlaying,
    required TResult Function(_FetchTopMovies value) fetchTopMovies,
    required TResult Function(_FetchHomePageData value) fetchHomePageData,
  }) {
    return fetchNowPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult? Function(_FetchTopMovies value)? fetchTopMovies,
    TResult? Function(_FetchHomePageData value)? fetchHomePageData,
  }) {
    return fetchNowPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult Function(_FetchTopMovies value)? fetchTopMovies,
    TResult Function(_FetchHomePageData value)? fetchHomePageData,
    required TResult orElse(),
  }) {
    if (fetchNowPlaying != null) {
      return fetchNowPlaying(this);
    }
    return orElse();
  }
}

abstract class _FetchNowPlaying implements HomeEvents {
  const factory _FetchNowPlaying({required final int pageKey}) =
      _$FetchNowPlayingImpl;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$FetchNowPlayingImplCopyWith<_$FetchNowPlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTopMoviesImplCopyWith<$Res> {
  factory _$$FetchTopMoviesImplCopyWith(_$FetchTopMoviesImpl value,
          $Res Function(_$FetchTopMoviesImpl) then) =
      __$$FetchTopMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTopMoviesImplCopyWithImpl<$Res>
    extends _$HomeEventsCopyWithImpl<$Res, _$FetchTopMoviesImpl>
    implements _$$FetchTopMoviesImplCopyWith<$Res> {
  __$$FetchTopMoviesImplCopyWithImpl(
      _$FetchTopMoviesImpl _value, $Res Function(_$FetchTopMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTopMoviesImpl implements _FetchTopMovies {
  const _$FetchTopMoviesImpl();

  @override
  String toString() {
    return 'HomeEvents.fetchTopMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTopMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchNowPlaying,
    required TResult Function() fetchTopMovies,
    required TResult Function() fetchHomePageData,
  }) {
    return fetchTopMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchNowPlaying,
    TResult? Function()? fetchTopMovies,
    TResult? Function()? fetchHomePageData,
  }) {
    return fetchTopMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchNowPlaying,
    TResult Function()? fetchTopMovies,
    TResult Function()? fetchHomePageData,
    required TResult orElse(),
  }) {
    if (fetchTopMovies != null) {
      return fetchTopMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNowPlaying value) fetchNowPlaying,
    required TResult Function(_FetchTopMovies value) fetchTopMovies,
    required TResult Function(_FetchHomePageData value) fetchHomePageData,
  }) {
    return fetchTopMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult? Function(_FetchTopMovies value)? fetchTopMovies,
    TResult? Function(_FetchHomePageData value)? fetchHomePageData,
  }) {
    return fetchTopMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult Function(_FetchTopMovies value)? fetchTopMovies,
    TResult Function(_FetchHomePageData value)? fetchHomePageData,
    required TResult orElse(),
  }) {
    if (fetchTopMovies != null) {
      return fetchTopMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchTopMovies implements HomeEvents {
  const factory _FetchTopMovies() = _$FetchTopMoviesImpl;
}

/// @nodoc
abstract class _$$FetchHomePageDataImplCopyWith<$Res> {
  factory _$$FetchHomePageDataImplCopyWith(_$FetchHomePageDataImpl value,
          $Res Function(_$FetchHomePageDataImpl) then) =
      __$$FetchHomePageDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHomePageDataImplCopyWithImpl<$Res>
    extends _$HomeEventsCopyWithImpl<$Res, _$FetchHomePageDataImpl>
    implements _$$FetchHomePageDataImplCopyWith<$Res> {
  __$$FetchHomePageDataImplCopyWithImpl(_$FetchHomePageDataImpl _value,
      $Res Function(_$FetchHomePageDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchHomePageDataImpl implements _FetchHomePageData {
  const _$FetchHomePageDataImpl();

  @override
  String toString() {
    return 'HomeEvents.fetchHomePageData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchHomePageDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) fetchNowPlaying,
    required TResult Function() fetchTopMovies,
    required TResult Function() fetchHomePageData,
  }) {
    return fetchHomePageData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? fetchNowPlaying,
    TResult? Function()? fetchTopMovies,
    TResult? Function()? fetchHomePageData,
  }) {
    return fetchHomePageData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? fetchNowPlaying,
    TResult Function()? fetchTopMovies,
    TResult Function()? fetchHomePageData,
    required TResult orElse(),
  }) {
    if (fetchHomePageData != null) {
      return fetchHomePageData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNowPlaying value) fetchNowPlaying,
    required TResult Function(_FetchTopMovies value) fetchTopMovies,
    required TResult Function(_FetchHomePageData value) fetchHomePageData,
  }) {
    return fetchHomePageData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult? Function(_FetchTopMovies value)? fetchTopMovies,
    TResult? Function(_FetchHomePageData value)? fetchHomePageData,
  }) {
    return fetchHomePageData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNowPlaying value)? fetchNowPlaying,
    TResult Function(_FetchTopMovies value)? fetchTopMovies,
    TResult Function(_FetchHomePageData value)? fetchHomePageData,
    required TResult orElse(),
  }) {
    if (fetchHomePageData != null) {
      return fetchHomePageData(this);
    }
    return orElse();
  }
}

abstract class _FetchHomePageData implements HomeEvents {
  const factory _FetchHomePageData() = _$FetchHomePageDataImpl;
}

/// @nodoc
mixin _$HomeStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)
        homeLoaded,
    required TResult Function(List<NowPlayingResultEntity> data)
        nowPlayingLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult? Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) homeLoaded,
    required TResult Function(_NowPlayingLoaded value) nowPlayingLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? homeLoaded,
    TResult? Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? homeLoaded,
    TResult Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatesCopyWith<$Res> {
  factory $HomeStatesCopyWith(
          HomeStates value, $Res Function(HomeStates) then) =
      _$HomeStatesCopyWithImpl<$Res, HomeStates>;
}

/// @nodoc
class _$HomeStatesCopyWithImpl<$Res, $Val extends HomeStates>
    implements $HomeStatesCopyWith<$Res> {
  _$HomeStatesCopyWithImpl(this._value, this._then);

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
    extends _$HomeStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomeStates.initial()';
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
    required TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)
        homeLoaded,
    required TResult Function(List<NowPlayingResultEntity> data)
        nowPlayingLoaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult? Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult Function()? error,
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
    required TResult Function(_Loaded value) homeLoaded,
    required TResult Function(_NowPlayingLoaded value) nowPlayingLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? homeLoaded,
    TResult? Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? homeLoaded,
    TResult Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeStates {
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
    extends _$HomeStatesCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'HomeStates.loading()';
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
    required TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)
        homeLoaded,
    required TResult Function(List<NowPlayingResultEntity> data)
        nowPlayingLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult? Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult Function()? error,
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
    required TResult Function(_Loaded value) homeLoaded,
    required TResult Function(_NowPlayingLoaded value) nowPlayingLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? homeLoaded,
    TResult? Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? homeLoaded,
    TResult Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeStates {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<NowPlayingResultEntity> nowPlayingData,
      List<TopMoviesResultEntity> topMoviesData});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowPlayingData = null,
    Object? topMoviesData = null,
  }) {
    return _then(_$LoadedImpl(
      nowPlayingData: null == nowPlayingData
          ? _value._nowPlayingData
          : nowPlayingData // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResultEntity>,
      topMoviesData: null == topMoviesData
          ? _value._topMoviesData
          : topMoviesData // ignore: cast_nullable_to_non_nullable
              as List<TopMoviesResultEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<NowPlayingResultEntity> nowPlayingData,
      required final List<TopMoviesResultEntity> topMoviesData})
      : _nowPlayingData = nowPlayingData,
        _topMoviesData = topMoviesData;

  final List<NowPlayingResultEntity> _nowPlayingData;
  @override
  List<NowPlayingResultEntity> get nowPlayingData {
    if (_nowPlayingData is EqualUnmodifiableListView) return _nowPlayingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingData);
  }

  final List<TopMoviesResultEntity> _topMoviesData;
  @override
  List<TopMoviesResultEntity> get topMoviesData {
    if (_topMoviesData is EqualUnmodifiableListView) return _topMoviesData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topMoviesData);
  }

  @override
  String toString() {
    return 'HomeStates.homeLoaded(nowPlayingData: $nowPlayingData, topMoviesData: $topMoviesData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingData, _nowPlayingData) &&
            const DeepCollectionEquality()
                .equals(other._topMoviesData, _topMoviesData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nowPlayingData),
      const DeepCollectionEquality().hash(_topMoviesData));

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
    required TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)
        homeLoaded,
    required TResult Function(List<NowPlayingResultEntity> data)
        nowPlayingLoaded,
    required TResult Function() error,
  }) {
    return homeLoaded(nowPlayingData, topMoviesData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult? Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult? Function()? error,
  }) {
    return homeLoaded?.call(nowPlayingData, topMoviesData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (homeLoaded != null) {
      return homeLoaded(nowPlayingData, topMoviesData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) homeLoaded,
    required TResult Function(_NowPlayingLoaded value) nowPlayingLoaded,
    required TResult Function(_Error value) error,
  }) {
    return homeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? homeLoaded,
    TResult? Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return homeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? homeLoaded,
    TResult Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (homeLoaded != null) {
      return homeLoaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeStates {
  const factory _Loaded(
      {required final List<NowPlayingResultEntity> nowPlayingData,
      required final List<TopMoviesResultEntity> topMoviesData}) = _$LoadedImpl;

  List<NowPlayingResultEntity> get nowPlayingData;
  List<TopMoviesResultEntity> get topMoviesData;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NowPlayingLoadedImplCopyWith<$Res> {
  factory _$$NowPlayingLoadedImplCopyWith(_$NowPlayingLoadedImpl value,
          $Res Function(_$NowPlayingLoadedImpl) then) =
      __$$NowPlayingLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NowPlayingResultEntity> data});
}

/// @nodoc
class __$$NowPlayingLoadedImplCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$NowPlayingLoadedImpl>
    implements _$$NowPlayingLoadedImplCopyWith<$Res> {
  __$$NowPlayingLoadedImplCopyWithImpl(_$NowPlayingLoadedImpl _value,
      $Res Function(_$NowPlayingLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NowPlayingLoadedImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NowPlayingResultEntity>,
    ));
  }
}

/// @nodoc

class _$NowPlayingLoadedImpl implements _NowPlayingLoaded {
  const _$NowPlayingLoadedImpl(
      {required final List<NowPlayingResultEntity> data})
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
    return 'HomeStates.nowPlayingLoaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingLoadedImplCopyWith<_$NowPlayingLoadedImpl> get copyWith =>
      __$$NowPlayingLoadedImplCopyWithImpl<_$NowPlayingLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)
        homeLoaded,
    required TResult Function(List<NowPlayingResultEntity> data)
        nowPlayingLoaded,
    required TResult Function() error,
  }) {
    return nowPlayingLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult? Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult? Function()? error,
  }) {
    return nowPlayingLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (nowPlayingLoaded != null) {
      return nowPlayingLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) homeLoaded,
    required TResult Function(_NowPlayingLoaded value) nowPlayingLoaded,
    required TResult Function(_Error value) error,
  }) {
    return nowPlayingLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? homeLoaded,
    TResult? Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return nowPlayingLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? homeLoaded,
    TResult Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (nowPlayingLoaded != null) {
      return nowPlayingLoaded(this);
    }
    return orElse();
  }
}

abstract class _NowPlayingLoaded implements HomeStates {
  const factory _NowPlayingLoaded(
          {required final List<NowPlayingResultEntity> data}) =
      _$NowPlayingLoadedImpl;

  List<NowPlayingResultEntity> get data;
  @JsonKey(ignore: true)
  _$$NowPlayingLoadedImplCopyWith<_$NowPlayingLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'HomeStates.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)
        homeLoaded,
    required TResult Function(List<NowPlayingResultEntity> data)
        nowPlayingLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult? Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NowPlayingResultEntity> nowPlayingData,
            List<TopMoviesResultEntity> topMoviesData)?
        homeLoaded,
    TResult Function(List<NowPlayingResultEntity> data)? nowPlayingLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) homeLoaded,
    required TResult Function(_NowPlayingLoaded value) nowPlayingLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? homeLoaded,
    TResult? Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? homeLoaded,
    TResult Function(_NowPlayingLoaded value)? nowPlayingLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeStates {
  const factory _Error() = _$ErrorImpl;
}
