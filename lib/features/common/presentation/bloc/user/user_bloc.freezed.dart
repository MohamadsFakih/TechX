// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function(MiniItemEntity item, String type) addLike,
    required TResult Function() getUid,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSignedIn,
    TResult? Function(MiniItemEntity item, String type)? addLike,
    TResult? Function()? getUid,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function(MiniItemEntity item, String type)? addLike,
    TResult Function()? getUid,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSignedIn value) checkSignedIn,
    required TResult Function(AddLike value) addLike,
    required TResult Function(GetUid value) getUid,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSignedIn value)? checkSignedIn,
    TResult? Function(AddLike value)? addLike,
    TResult? Function(GetUid value)? getUid,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSignedIn value)? checkSignedIn,
    TResult Function(AddLike value)? addLike,
    TResult Function(GetUid value)? getUid,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsSignedInCopyWith<$Res> {
  factory _$$IsSignedInCopyWith(
          _$IsSignedIn value, $Res Function(_$IsSignedIn) then) =
      __$$IsSignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsSignedInCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$IsSignedIn>
    implements _$$IsSignedInCopyWith<$Res> {
  __$$IsSignedInCopyWithImpl(
      _$IsSignedIn _value, $Res Function(_$IsSignedIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsSignedIn implements IsSignedIn {
  const _$IsSignedIn();

  @override
  String toString() {
    return 'UserEvent.checkSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function(MiniItemEntity item, String type) addLike,
    required TResult Function() getUid,
    required TResult Function() signOut,
  }) {
    return checkSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSignedIn,
    TResult? Function(MiniItemEntity item, String type)? addLike,
    TResult? Function()? getUid,
    TResult? Function()? signOut,
  }) {
    return checkSignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function(MiniItemEntity item, String type)? addLike,
    TResult Function()? getUid,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (checkSignedIn != null) {
      return checkSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSignedIn value) checkSignedIn,
    required TResult Function(AddLike value) addLike,
    required TResult Function(GetUid value) getUid,
    required TResult Function(SignOut value) signOut,
  }) {
    return checkSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSignedIn value)? checkSignedIn,
    TResult? Function(AddLike value)? addLike,
    TResult? Function(GetUid value)? getUid,
    TResult? Function(SignOut value)? signOut,
  }) {
    return checkSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSignedIn value)? checkSignedIn,
    TResult Function(AddLike value)? addLike,
    TResult Function(GetUid value)? getUid,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (checkSignedIn != null) {
      return checkSignedIn(this);
    }
    return orElse();
  }
}

abstract class IsSignedIn implements UserEvent {
  const factory IsSignedIn() = _$IsSignedIn;
}

/// @nodoc
abstract class _$$AddLikeCopyWith<$Res> {
  factory _$$AddLikeCopyWith(_$AddLike value, $Res Function(_$AddLike) then) =
      __$$AddLikeCopyWithImpl<$Res>;
  @useResult
  $Res call({MiniItemEntity item, String type});

  $MiniItemEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddLikeCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddLike>
    implements _$$AddLikeCopyWith<$Res> {
  __$$AddLikeCopyWithImpl(_$AddLike _value, $Res Function(_$AddLike) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? type = null,
  }) {
    return _then(_$AddLike(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MiniItemEntity,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MiniItemEntityCopyWith<$Res> get item {
    return $MiniItemEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddLike implements AddLike {
  const _$AddLike(this.item, this.type);

  @override
  final MiniItemEntity item;
  @override
  final String type;

  @override
  String toString() {
    return 'UserEvent.addLike(item: $item, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLike &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLikeCopyWith<_$AddLike> get copyWith =>
      __$$AddLikeCopyWithImpl<_$AddLike>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function(MiniItemEntity item, String type) addLike,
    required TResult Function() getUid,
    required TResult Function() signOut,
  }) {
    return addLike(item, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSignedIn,
    TResult? Function(MiniItemEntity item, String type)? addLike,
    TResult? Function()? getUid,
    TResult? Function()? signOut,
  }) {
    return addLike?.call(item, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function(MiniItemEntity item, String type)? addLike,
    TResult Function()? getUid,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (addLike != null) {
      return addLike(item, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSignedIn value) checkSignedIn,
    required TResult Function(AddLike value) addLike,
    required TResult Function(GetUid value) getUid,
    required TResult Function(SignOut value) signOut,
  }) {
    return addLike(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSignedIn value)? checkSignedIn,
    TResult? Function(AddLike value)? addLike,
    TResult? Function(GetUid value)? getUid,
    TResult? Function(SignOut value)? signOut,
  }) {
    return addLike?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSignedIn value)? checkSignedIn,
    TResult Function(AddLike value)? addLike,
    TResult Function(GetUid value)? getUid,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (addLike != null) {
      return addLike(this);
    }
    return orElse();
  }
}

abstract class AddLike implements UserEvent {
  const factory AddLike(final MiniItemEntity item, final String type) =
      _$AddLike;

  MiniItemEntity get item;
  String get type;
  @JsonKey(ignore: true)
  _$$AddLikeCopyWith<_$AddLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUidCopyWith<$Res> {
  factory _$$GetUidCopyWith(_$GetUid value, $Res Function(_$GetUid) then) =
      __$$GetUidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUidCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUid>
    implements _$$GetUidCopyWith<$Res> {
  __$$GetUidCopyWithImpl(_$GetUid _value, $Res Function(_$GetUid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUid implements GetUid {
  const _$GetUid();

  @override
  String toString() {
    return 'UserEvent.getUid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function(MiniItemEntity item, String type) addLike,
    required TResult Function() getUid,
    required TResult Function() signOut,
  }) {
    return getUid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSignedIn,
    TResult? Function(MiniItemEntity item, String type)? addLike,
    TResult? Function()? getUid,
    TResult? Function()? signOut,
  }) {
    return getUid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function(MiniItemEntity item, String type)? addLike,
    TResult Function()? getUid,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (getUid != null) {
      return getUid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSignedIn value) checkSignedIn,
    required TResult Function(AddLike value) addLike,
    required TResult Function(GetUid value) getUid,
    required TResult Function(SignOut value) signOut,
  }) {
    return getUid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSignedIn value)? checkSignedIn,
    TResult? Function(AddLike value)? addLike,
    TResult? Function(GetUid value)? getUid,
    TResult? Function(SignOut value)? signOut,
  }) {
    return getUid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSignedIn value)? checkSignedIn,
    TResult Function(AddLike value)? addLike,
    TResult Function(GetUid value)? getUid,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (getUid != null) {
      return getUid(this);
    }
    return orElse();
  }
}

abstract class GetUid implements UserEvent {
  const factory GetUid() = _$GetUid;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'UserEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSignedIn,
    required TResult Function(MiniItemEntity item, String type) addLike,
    required TResult Function() getUid,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSignedIn,
    TResult? Function(MiniItemEntity item, String type)? addLike,
    TResult? Function()? getUid,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSignedIn,
    TResult Function(MiniItemEntity item, String type)? addLike,
    TResult Function()? getUid,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSignedIn value) checkSignedIn,
    required TResult Function(AddLike value) addLike,
    required TResult Function(GetUid value) getUid,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSignedIn value)? checkSignedIn,
    TResult? Function(AddLike value)? addLike,
    TResult? Function(GetUid value)? getUid,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSignedIn value)? checkSignedIn,
    TResult Function(AddLike value)? addLike,
    TResult Function(GetUid value)? getUid,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements UserEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
mixin _$UserState {
  /// Used to catch the errors
  String get error => throw _privateConstructorUsedError;

  /// The current user id
  String get id => throw _privateConstructorUsedError;

  /// To show the loading bar
  bool get isLoading => throw _privateConstructorUsedError;

  /// Checks if the user is signed in
  bool get isSignedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({String error, String id, bool isLoading, bool isSignedIn});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? id = null,
    Object? isLoading = null,
    Object? isSignedIn = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String id, bool isLoading, bool isSignedIn});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? id = null,
    Object? isLoading = null,
    Object? isSignedIn = null,
  }) {
    return _then(_$_Initial(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.error = '',
      this.id = '',
      this.isLoading = false,
      this.isSignedIn = false});

  /// Used to catch the errors
  @override
  @JsonKey()
  final String error;

  /// The current user id
  @override
  @JsonKey()
  final String id;

  /// To show the loading bar
  @override
  @JsonKey()
  final bool isLoading;

  /// Checks if the user is signed in
  @override
  @JsonKey()
  final bool isSignedIn;

  @override
  String toString() {
    return 'UserState(error: $error, id: $id, isLoading: $isLoading, isSignedIn: $isSignedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, id, isLoading, isSignedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements UserState {
  const factory _Initial(
      {final String error,
      final String id,
      final bool isLoading,
      final bool isSignedIn}) = _$_Initial;

  @override

  /// Used to catch the errors
  String get error;
  @override

  /// The current user id
  String get id;
  @override

  /// To show the loading bar
  bool get isLoading;
  @override

  /// Checks if the user is signed in
  bool get isSignedIn;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
