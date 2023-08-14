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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeatured,
    required TResult Function() getNew,
    required TResult Function() getBanners,
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeatured,
    TResult? Function()? getNew,
    TResult? Function()? getBanners,
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeatured,
    TResult Function()? getNew,
    TResult Function()? getBanners,
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeatured value) getFeatured,
    required TResult Function(GetNew value) getNew,
    required TResult Function(GetBanners value) getBanners,
    required TResult Function(Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeatured value)? getFeatured,
    TResult? Function(GetNew value)? getNew,
    TResult? Function(GetBanners value)? getBanners,
    TResult? Function(Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeatured value)? getFeatured,
    TResult Function(GetNew value)? getNew,
    TResult Function(GetBanners value)? getBanners,
    TResult Function(Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFeaturedCopyWith<$Res> {
  factory _$$GetFeaturedCopyWith(
          _$GetFeatured value, $Res Function(_$GetFeatured) then) =
      __$$GetFeaturedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFeaturedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetFeatured>
    implements _$$GetFeaturedCopyWith<$Res> {
  __$$GetFeaturedCopyWithImpl(
      _$GetFeatured _value, $Res Function(_$GetFeatured) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFeatured implements GetFeatured {
  const _$GetFeatured();

  @override
  String toString() {
    return 'HomeEvent.getFeatured()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFeatured);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeatured,
    required TResult Function() getNew,
    required TResult Function() getBanners,
    required TResult Function() fetch,
  }) {
    return getFeatured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeatured,
    TResult? Function()? getNew,
    TResult? Function()? getBanners,
    TResult? Function()? fetch,
  }) {
    return getFeatured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeatured,
    TResult Function()? getNew,
    TResult Function()? getBanners,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (getFeatured != null) {
      return getFeatured();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeatured value) getFeatured,
    required TResult Function(GetNew value) getNew,
    required TResult Function(GetBanners value) getBanners,
    required TResult Function(Fetch value) fetch,
  }) {
    return getFeatured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeatured value)? getFeatured,
    TResult? Function(GetNew value)? getNew,
    TResult? Function(GetBanners value)? getBanners,
    TResult? Function(Fetch value)? fetch,
  }) {
    return getFeatured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeatured value)? getFeatured,
    TResult Function(GetNew value)? getNew,
    TResult Function(GetBanners value)? getBanners,
    TResult Function(Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (getFeatured != null) {
      return getFeatured(this);
    }
    return orElse();
  }
}

abstract class GetFeatured implements HomeEvent {
  const factory GetFeatured() = _$GetFeatured;
}

/// @nodoc
abstract class _$$GetNewCopyWith<$Res> {
  factory _$$GetNewCopyWith(_$GetNew value, $Res Function(_$GetNew) then) =
      __$$GetNewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNewCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNew>
    implements _$$GetNewCopyWith<$Res> {
  __$$GetNewCopyWithImpl(_$GetNew _value, $Res Function(_$GetNew) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNew implements GetNew {
  const _$GetNew();

  @override
  String toString() {
    return 'HomeEvent.getNew()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNew);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeatured,
    required TResult Function() getNew,
    required TResult Function() getBanners,
    required TResult Function() fetch,
  }) {
    return getNew();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeatured,
    TResult? Function()? getNew,
    TResult? Function()? getBanners,
    TResult? Function()? fetch,
  }) {
    return getNew?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeatured,
    TResult Function()? getNew,
    TResult Function()? getBanners,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (getNew != null) {
      return getNew();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeatured value) getFeatured,
    required TResult Function(GetNew value) getNew,
    required TResult Function(GetBanners value) getBanners,
    required TResult Function(Fetch value) fetch,
  }) {
    return getNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeatured value)? getFeatured,
    TResult? Function(GetNew value)? getNew,
    TResult? Function(GetBanners value)? getBanners,
    TResult? Function(Fetch value)? fetch,
  }) {
    return getNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeatured value)? getFeatured,
    TResult Function(GetNew value)? getNew,
    TResult Function(GetBanners value)? getBanners,
    TResult Function(Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (getNew != null) {
      return getNew(this);
    }
    return orElse();
  }
}

abstract class GetNew implements HomeEvent {
  const factory GetNew() = _$GetNew;
}

/// @nodoc
abstract class _$$GetBannersCopyWith<$Res> {
  factory _$$GetBannersCopyWith(
          _$GetBanners value, $Res Function(_$GetBanners) then) =
      __$$GetBannersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBannersCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBanners>
    implements _$$GetBannersCopyWith<$Res> {
  __$$GetBannersCopyWithImpl(
      _$GetBanners _value, $Res Function(_$GetBanners) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBanners implements GetBanners {
  const _$GetBanners();

  @override
  String toString() {
    return 'HomeEvent.getBanners()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBanners);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeatured,
    required TResult Function() getNew,
    required TResult Function() getBanners,
    required TResult Function() fetch,
  }) {
    return getBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeatured,
    TResult? Function()? getNew,
    TResult? Function()? getBanners,
    TResult? Function()? fetch,
  }) {
    return getBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeatured,
    TResult Function()? getNew,
    TResult Function()? getBanners,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeatured value) getFeatured,
    required TResult Function(GetNew value) getNew,
    required TResult Function(GetBanners value) getBanners,
    required TResult Function(Fetch value) fetch,
  }) {
    return getBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeatured value)? getFeatured,
    TResult? Function(GetNew value)? getNew,
    TResult? Function(GetBanners value)? getBanners,
    TResult? Function(Fetch value)? fetch,
  }) {
    return getBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeatured value)? getFeatured,
    TResult Function(GetNew value)? getNew,
    TResult Function(GetBanners value)? getBanners,
    TResult Function(Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners(this);
    }
    return orElse();
  }
}

abstract class GetBanners implements HomeEvent {
  const factory GetBanners() = _$GetBanners;
}

/// @nodoc
abstract class _$$FetchCopyWith<$Res> {
  factory _$$FetchCopyWith(_$Fetch value, $Res Function(_$Fetch) then) =
      __$$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$Fetch>
    implements _$$FetchCopyWith<$Res> {
  __$$FetchCopyWithImpl(_$Fetch _value, $Res Function(_$Fetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Fetch implements Fetch {
  const _$Fetch();

  @override
  String toString() {
    return 'HomeEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFeatured,
    required TResult Function() getNew,
    required TResult Function() getBanners,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFeatured,
    TResult? Function()? getNew,
    TResult? Function()? getBanners,
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFeatured,
    TResult Function()? getNew,
    TResult Function()? getBanners,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFeatured value) getFeatured,
    required TResult Function(GetNew value) getNew,
    required TResult Function(GetBanners value) getBanners,
    required TResult Function(Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFeatured value)? getFeatured,
    TResult? Function(GetNew value)? getNew,
    TResult? Function(GetBanners value)? getBanners,
    TResult? Function(Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFeatured value)? getFeatured,
    TResult Function(GetNew value)? getNew,
    TResult Function(GetBanners value)? getBanners,
    TResult Function(Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements HomeEvent {
  const factory Fetch() = _$Fetch;
}

/// @nodoc
mixin _$HomeState {
  /// The list of featured products
  List<MiniItemEntity> get featured => throw _privateConstructorUsedError;

  /// The list of new products
  List<MiniItemEntity> get newList => throw _privateConstructorUsedError;

  /// The list of banners
  List<BannerItem> get banners => throw _privateConstructorUsedError;

  /// To check if the page is loading
  dynamic get isLoading => throw _privateConstructorUsedError;

  /// Used to catch error messages
  dynamic get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<MiniItemEntity> featured,
      List<MiniItemEntity> newList,
      List<BannerItem> banners,
      dynamic isLoading,
      dynamic errorMessage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featured = null,
    Object? newList = null,
    Object? banners = null,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as List<MiniItemEntity>,
      newList: null == newList
          ? _value.newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<MiniItemEntity>,
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MiniItemEntity> featured,
      List<MiniItemEntity> newList,
      List<BannerItem> banners,
      dynamic isLoading,
      dynamic errorMessage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featured = null,
    Object? newList = null,
    Object? banners = null,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Initial(
      featured: null == featured
          ? _value._featured
          : featured // ignore: cast_nullable_to_non_nullable
              as List<MiniItemEntity>,
      newList: null == newList
          ? _value._newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<MiniItemEntity>,
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerItem>,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      errorMessage:
          freezed == errorMessage ? _value.errorMessage! : errorMessage,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {final List<MiniItemEntity> featured = const [],
      final List<MiniItemEntity> newList = const [],
      final List<BannerItem> banners = const [],
      this.isLoading = false,
      this.errorMessage = ""})
      : _featured = featured,
        _newList = newList,
        _banners = banners;

  /// The list of featured products
  final List<MiniItemEntity> _featured;

  /// The list of featured products
  @override
  @JsonKey()
  List<MiniItemEntity> get featured {
    if (_featured is EqualUnmodifiableListView) return _featured;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featured);
  }

  /// The list of new products
  final List<MiniItemEntity> _newList;

  /// The list of new products
  @override
  @JsonKey()
  List<MiniItemEntity> get newList {
    if (_newList is EqualUnmodifiableListView) return _newList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newList);
  }

  /// The list of banners
  final List<BannerItem> _banners;

  /// The list of banners
  @override
  @JsonKey()
  List<BannerItem> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  /// To check if the page is loading
  @override
  @JsonKey()
  final dynamic isLoading;

  /// Used to catch error messages
  @override
  @JsonKey()
  final dynamic errorMessage;

  @override
  String toString() {
    return 'HomeState(featured: $featured, newList: $newList, banners: $banners, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._featured, _featured) &&
            const DeepCollectionEquality().equals(other._newList, _newList) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_featured),
      const DeepCollectionEquality().hash(_newList),
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final List<MiniItemEntity> featured,
      final List<MiniItemEntity> newList,
      final List<BannerItem> banners,
      final dynamic isLoading,
      final dynamic errorMessage}) = _$_Initial;

  @override

  /// The list of featured products
  List<MiniItemEntity> get featured;
  @override

  /// The list of new products
  List<MiniItemEntity> get newList;
  @override

  /// The list of banners
  List<BannerItem> get banners;
  @override

  /// To check if the page is loading
  dynamic get isLoading;
  @override

  /// Used to catch error messages
  dynamic get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
