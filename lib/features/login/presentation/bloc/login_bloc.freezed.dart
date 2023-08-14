// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginCredentials loginCredentials) signIn,
    required TResult Function(String email, String password, bool toggleValue)
        rememberMe,
    required TResult Function() getLoginCredentials,
    required TResult Function(String email) sendPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginCredentials loginCredentials)? signIn,
    TResult? Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult? Function()? getLoginCredentials,
    TResult? Function(String email)? sendPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginCredentials loginCredentials)? signIn,
    TResult Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult Function()? getLoginCredentials,
    TResult Function(String email)? sendPasswordReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(RememberMe value) rememberMe,
    required TResult Function(GetLoginCredentials value) getLoginCredentials,
    required TResult Function(SendPasswordReset value) sendPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(RememberMe value)? rememberMe,
    TResult? Function(GetLoginCredentials value)? getLoginCredentials,
    TResult? Function(SendPasswordReset value)? sendPasswordReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(RememberMe value)? rememberMe,
    TResult Function(GetLoginCredentials value)? getLoginCredentials,
    TResult Function(SendPasswordReset value)? sendPasswordReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginCredentials loginCredentials});

  $LoginCredentialsCopyWith<$Res> get loginCredentials;
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginCredentials = null,
  }) {
    return _then(_$SignIn(
      null == loginCredentials
          ? _value.loginCredentials
          : loginCredentials // ignore: cast_nullable_to_non_nullable
              as LoginCredentials,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginCredentialsCopyWith<$Res> get loginCredentials {
    return $LoginCredentialsCopyWith<$Res>(_value.loginCredentials, (value) {
      return _then(_value.copyWith(loginCredentials: value));
    });
  }
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn(this.loginCredentials);

  @override
  final LoginCredentials loginCredentials;

  @override
  String toString() {
    return 'LoginEvent.signIn(loginCredentials: $loginCredentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignIn &&
            (identical(other.loginCredentials, loginCredentials) ||
                other.loginCredentials == loginCredentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginCredentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      __$$SignInCopyWithImpl<_$SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginCredentials loginCredentials) signIn,
    required TResult Function(String email, String password, bool toggleValue)
        rememberMe,
    required TResult Function() getLoginCredentials,
    required TResult Function(String email) sendPasswordReset,
  }) {
    return signIn(loginCredentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginCredentials loginCredentials)? signIn,
    TResult? Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult? Function()? getLoginCredentials,
    TResult? Function(String email)? sendPasswordReset,
  }) {
    return signIn?.call(loginCredentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginCredentials loginCredentials)? signIn,
    TResult Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult Function()? getLoginCredentials,
    TResult Function(String email)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(loginCredentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(RememberMe value) rememberMe,
    required TResult Function(GetLoginCredentials value) getLoginCredentials,
    required TResult Function(SendPasswordReset value) sendPasswordReset,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(RememberMe value)? rememberMe,
    TResult? Function(GetLoginCredentials value)? getLoginCredentials,
    TResult? Function(SendPasswordReset value)? sendPasswordReset,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(RememberMe value)? rememberMe,
    TResult Function(GetLoginCredentials value)? getLoginCredentials,
    TResult Function(SendPasswordReset value)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements LoginEvent {
  const factory SignIn(final LoginCredentials loginCredentials) = _$SignIn;

  LoginCredentials get loginCredentials;
  @JsonKey(ignore: true)
  _$$SignInCopyWith<_$SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RememberMeCopyWith<$Res> {
  factory _$$RememberMeCopyWith(
          _$RememberMe value, $Res Function(_$RememberMe) then) =
      __$$RememberMeCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, bool toggleValue});
}

/// @nodoc
class __$$RememberMeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$RememberMe>
    implements _$$RememberMeCopyWith<$Res> {
  __$$RememberMeCopyWithImpl(
      _$RememberMe _value, $Res Function(_$RememberMe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? toggleValue = null,
  }) {
    return _then(_$RememberMe(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == toggleValue
          ? _value.toggleValue
          : toggleValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RememberMe implements RememberMe {
  const _$RememberMe(this.email, this.password, this.toggleValue);

  @override
  final String email;
  @override
  final String password;
  @override
  final bool toggleValue;

  @override
  String toString() {
    return 'LoginEvent.rememberMe(email: $email, password: $password, toggleValue: $toggleValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RememberMe &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.toggleValue, toggleValue) ||
                other.toggleValue == toggleValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, toggleValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RememberMeCopyWith<_$RememberMe> get copyWith =>
      __$$RememberMeCopyWithImpl<_$RememberMe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginCredentials loginCredentials) signIn,
    required TResult Function(String email, String password, bool toggleValue)
        rememberMe,
    required TResult Function() getLoginCredentials,
    required TResult Function(String email) sendPasswordReset,
  }) {
    return rememberMe(email, password, toggleValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginCredentials loginCredentials)? signIn,
    TResult? Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult? Function()? getLoginCredentials,
    TResult? Function(String email)? sendPasswordReset,
  }) {
    return rememberMe?.call(email, password, toggleValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginCredentials loginCredentials)? signIn,
    TResult Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult Function()? getLoginCredentials,
    TResult Function(String email)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (rememberMe != null) {
      return rememberMe(email, password, toggleValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(RememberMe value) rememberMe,
    required TResult Function(GetLoginCredentials value) getLoginCredentials,
    required TResult Function(SendPasswordReset value) sendPasswordReset,
  }) {
    return rememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(RememberMe value)? rememberMe,
    TResult? Function(GetLoginCredentials value)? getLoginCredentials,
    TResult? Function(SendPasswordReset value)? sendPasswordReset,
  }) {
    return rememberMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(RememberMe value)? rememberMe,
    TResult Function(GetLoginCredentials value)? getLoginCredentials,
    TResult Function(SendPasswordReset value)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (rememberMe != null) {
      return rememberMe(this);
    }
    return orElse();
  }
}

abstract class RememberMe implements LoginEvent {
  const factory RememberMe(
          final String email, final String password, final bool toggleValue) =
      _$RememberMe;

  String get email;
  String get password;
  bool get toggleValue;
  @JsonKey(ignore: true)
  _$$RememberMeCopyWith<_$RememberMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLoginCredentialsCopyWith<$Res> {
  factory _$$GetLoginCredentialsCopyWith(_$GetLoginCredentials value,
          $Res Function(_$GetLoginCredentials) then) =
      __$$GetLoginCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLoginCredentialsCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GetLoginCredentials>
    implements _$$GetLoginCredentialsCopyWith<$Res> {
  __$$GetLoginCredentialsCopyWithImpl(
      _$GetLoginCredentials _value, $Res Function(_$GetLoginCredentials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLoginCredentials implements GetLoginCredentials {
  const _$GetLoginCredentials();

  @override
  String toString() {
    return 'LoginEvent.getLoginCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLoginCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginCredentials loginCredentials) signIn,
    required TResult Function(String email, String password, bool toggleValue)
        rememberMe,
    required TResult Function() getLoginCredentials,
    required TResult Function(String email) sendPasswordReset,
  }) {
    return getLoginCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginCredentials loginCredentials)? signIn,
    TResult? Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult? Function()? getLoginCredentials,
    TResult? Function(String email)? sendPasswordReset,
  }) {
    return getLoginCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginCredentials loginCredentials)? signIn,
    TResult Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult Function()? getLoginCredentials,
    TResult Function(String email)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (getLoginCredentials != null) {
      return getLoginCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(RememberMe value) rememberMe,
    required TResult Function(GetLoginCredentials value) getLoginCredentials,
    required TResult Function(SendPasswordReset value) sendPasswordReset,
  }) {
    return getLoginCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(RememberMe value)? rememberMe,
    TResult? Function(GetLoginCredentials value)? getLoginCredentials,
    TResult? Function(SendPasswordReset value)? sendPasswordReset,
  }) {
    return getLoginCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(RememberMe value)? rememberMe,
    TResult Function(GetLoginCredentials value)? getLoginCredentials,
    TResult Function(SendPasswordReset value)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (getLoginCredentials != null) {
      return getLoginCredentials(this);
    }
    return orElse();
  }
}

abstract class GetLoginCredentials implements LoginEvent {
  const factory GetLoginCredentials() = _$GetLoginCredentials;
}

/// @nodoc
abstract class _$$SendPasswordResetCopyWith<$Res> {
  factory _$$SendPasswordResetCopyWith(
          _$SendPasswordReset value, $Res Function(_$SendPasswordReset) then) =
      __$$SendPasswordResetCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendPasswordResetCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SendPasswordReset>
    implements _$$SendPasswordResetCopyWith<$Res> {
  __$$SendPasswordResetCopyWithImpl(
      _$SendPasswordReset _value, $Res Function(_$SendPasswordReset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendPasswordReset(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPasswordReset implements SendPasswordReset {
  const _$SendPasswordReset(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.sendPasswordReset(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPasswordReset &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPasswordResetCopyWith<_$SendPasswordReset> get copyWith =>
      __$$SendPasswordResetCopyWithImpl<_$SendPasswordReset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginCredentials loginCredentials) signIn,
    required TResult Function(String email, String password, bool toggleValue)
        rememberMe,
    required TResult Function() getLoginCredentials,
    required TResult Function(String email) sendPasswordReset,
  }) {
    return sendPasswordReset(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginCredentials loginCredentials)? signIn,
    TResult? Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult? Function()? getLoginCredentials,
    TResult? Function(String email)? sendPasswordReset,
  }) {
    return sendPasswordReset?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginCredentials loginCredentials)? signIn,
    TResult Function(String email, String password, bool toggleValue)?
        rememberMe,
    TResult Function()? getLoginCredentials,
    TResult Function(String email)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (sendPasswordReset != null) {
      return sendPasswordReset(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(RememberMe value) rememberMe,
    required TResult Function(GetLoginCredentials value) getLoginCredentials,
    required TResult Function(SendPasswordReset value) sendPasswordReset,
  }) {
    return sendPasswordReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(RememberMe value)? rememberMe,
    TResult? Function(GetLoginCredentials value)? getLoginCredentials,
    TResult? Function(SendPasswordReset value)? sendPasswordReset,
  }) {
    return sendPasswordReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(RememberMe value)? rememberMe,
    TResult Function(GetLoginCredentials value)? getLoginCredentials,
    TResult Function(SendPasswordReset value)? sendPasswordReset,
    required TResult orElse(),
  }) {
    if (sendPasswordReset != null) {
      return sendPasswordReset(this);
    }
    return orElse();
  }
}

abstract class SendPasswordReset implements LoginEvent {
  const factory SendPasswordReset(final String email) = _$SendPasswordReset;

  String get email;
  @JsonKey(ignore: true)
  _$$SendPasswordResetCopyWith<_$SendPasswordReset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  /// The saved login credentials (locally)
  LoginCredentials get loginCredentials => throw _privateConstructorUsedError;

  /// The logged in user's id
  dynamic get userId => throw _privateConstructorUsedError;

  /// To check if the page is loading
  bool get isLoading => throw _privateConstructorUsedError;

  /// To catch errors
  String get error => throw _privateConstructorUsedError;

  /// Checks if the user is signed in
  bool get signedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginCredentials loginCredentials,
      dynamic userId,
      bool isLoading,
      String error,
      bool signedIn});

  $LoginCredentialsCopyWith<$Res> get loginCredentials;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginCredentials = null,
    Object? userId = freezed,
    Object? isLoading = null,
    Object? error = null,
    Object? signedIn = null,
  }) {
    return _then(_value.copyWith(
      loginCredentials: null == loginCredentials
          ? _value.loginCredentials
          : loginCredentials // ignore: cast_nullable_to_non_nullable
              as LoginCredentials,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      signedIn: null == signedIn
          ? _value.signedIn
          : signedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginCredentialsCopyWith<$Res> get loginCredentials {
    return $LoginCredentialsCopyWith<$Res>(_value.loginCredentials, (value) {
      return _then(_value.copyWith(loginCredentials: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginCredentials loginCredentials,
      dynamic userId,
      bool isLoading,
      String error,
      bool signedIn});

  @override
  $LoginCredentialsCopyWith<$Res> get loginCredentials;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginCredentials = null,
    Object? userId = freezed,
    Object? isLoading = null,
    Object? error = null,
    Object? signedIn = null,
  }) {
    return _then(_$_Initial(
      loginCredentials: null == loginCredentials
          ? _value.loginCredentials
          : loginCredentials // ignore: cast_nullable_to_non_nullable
              as LoginCredentials,
      userId: freezed == userId ? _value.userId! : userId,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      signedIn: null == signedIn
          ? _value.signedIn
          : signedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.loginCredentials = const LoginCredentials(),
      this.userId = "",
      this.isLoading = false,
      this.error = '',
      this.signedIn = false});

  /// The saved login credentials (locally)
  @override
  @JsonKey()
  final LoginCredentials loginCredentials;

  /// The logged in user's id
  @override
  @JsonKey()
  final dynamic userId;

  /// To check if the page is loading
  @override
  @JsonKey()
  final bool isLoading;

  /// To catch errors
  @override
  @JsonKey()
  final String error;

  /// Checks if the user is signed in
  @override
  @JsonKey()
  final bool signedIn;

  @override
  String toString() {
    return 'LoginState(loginCredentials: $loginCredentials, userId: $userId, isLoading: $isLoading, error: $error, signedIn: $signedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.loginCredentials, loginCredentials) ||
                other.loginCredentials == loginCredentials) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.signedIn, signedIn) ||
                other.signedIn == signedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginCredentials,
      const DeepCollectionEquality().hash(userId), isLoading, error, signedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements LoginState {
  const factory _Initial(
      {final LoginCredentials loginCredentials,
      final dynamic userId,
      final bool isLoading,
      final String error,
      final bool signedIn}) = _$_Initial;

  @override

  /// The saved login credentials (locally)
  LoginCredentials get loginCredentials;
  @override

  /// The logged in user's id
  dynamic get userId;
  @override

  /// To check if the page is loading
  bool get isLoading;
  @override

  /// To catch errors
  String get error;
  @override

  /// Checks if the user is signed in
  bool get signedIn;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
