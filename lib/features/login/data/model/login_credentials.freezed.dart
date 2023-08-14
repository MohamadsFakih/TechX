// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginCredentials {
  /// The user's email address
  String get email => throw _privateConstructorUsedError;

  /// The user's password
  String get password => throw _privateConstructorUsedError;

  /// Checks if remember me is ticked
  bool get isRemembered => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCredentialsCopyWith<LoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsCopyWith<$Res> {
  factory $LoginCredentialsCopyWith(
          LoginCredentials value, $Res Function(LoginCredentials) then) =
      _$LoginCredentialsCopyWithImpl<$Res, LoginCredentials>;
  @useResult
  $Res call({String email, String password, bool isRemembered});
}

/// @nodoc
class _$LoginCredentialsCopyWithImpl<$Res, $Val extends LoginCredentials>
    implements $LoginCredentialsCopyWith<$Res> {
  _$LoginCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isRemembered = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isRemembered: null == isRemembered
          ? _value.isRemembered
          : isRemembered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginCredentialsCopyWith<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  factory _$$_LoginCredentialsCopyWith(
          _$_LoginCredentials value, $Res Function(_$_LoginCredentials) then) =
      __$$_LoginCredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, bool isRemembered});
}

/// @nodoc
class __$$_LoginCredentialsCopyWithImpl<$Res>
    extends _$LoginCredentialsCopyWithImpl<$Res, _$_LoginCredentials>
    implements _$$_LoginCredentialsCopyWith<$Res> {
  __$$_LoginCredentialsCopyWithImpl(
      _$_LoginCredentials _value, $Res Function(_$_LoginCredentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isRemembered = null,
  }) {
    return _then(_$_LoginCredentials(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isRemembered: null == isRemembered
          ? _value.isRemembered
          : isRemembered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginCredentials implements _LoginCredentials {
  const _$_LoginCredentials(
      {this.email = '', this.password = '', this.isRemembered = false});

  /// The user's email address
  @override
  @JsonKey()
  final String email;

  /// The user's password
  @override
  @JsonKey()
  final String password;

  /// Checks if remember me is ticked
  @override
  @JsonKey()
  final bool isRemembered;

  @override
  String toString() {
    return 'LoginCredentials(email: $email, password: $password, isRemembered: $isRemembered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginCredentials &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isRemembered, isRemembered) ||
                other.isRemembered == isRemembered));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isRemembered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCredentialsCopyWith<_$_LoginCredentials> get copyWith =>
      __$$_LoginCredentialsCopyWithImpl<_$_LoginCredentials>(this, _$identity);
}

abstract class _LoginCredentials implements LoginCredentials {
  const factory _LoginCredentials(
      {final String email,
      final String password,
      final bool isRemembered}) = _$_LoginCredentials;

  @override

  /// The user's email address
  String get email;
  @override

  /// The user's password
  String get password;
  @override

  /// Checks if remember me is ticked
  bool get isRemembered;
  @override
  @JsonKey(ignore: true)
  _$$_LoginCredentialsCopyWith<_$_LoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
