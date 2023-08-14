// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEntity {
  /// The name field of the user
  String get name => throw _privateConstructorUsedError;

  /// The email field of the user
  String get email => throw _privateConstructorUsedError;

  /// The password field of the user
  String get password => throw _privateConstructorUsedError;

  /// The retyped password field of the user for conformation
  String get retryPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEntityCopyWith<RegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEntityCopyWith<$Res> {
  factory $RegisterEntityCopyWith(
          RegisterEntity value, $Res Function(RegisterEntity) then) =
      _$RegisterEntityCopyWithImpl<$Res, RegisterEntity>;
  @useResult
  $Res call({String name, String email, String password, String retryPassword});
}

/// @nodoc
class _$RegisterEntityCopyWithImpl<$Res, $Val extends RegisterEntity>
    implements $RegisterEntityCopyWith<$Res> {
  _$RegisterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? retryPassword = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      retryPassword: null == retryPassword
          ? _value.retryPassword
          : retryPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterEntityCopyWith<$Res>
    implements $RegisterEntityCopyWith<$Res> {
  factory _$$_RegisterEntityCopyWith(
          _$_RegisterEntity value, $Res Function(_$_RegisterEntity) then) =
      __$$_RegisterEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password, String retryPassword});
}

/// @nodoc
class __$$_RegisterEntityCopyWithImpl<$Res>
    extends _$RegisterEntityCopyWithImpl<$Res, _$_RegisterEntity>
    implements _$$_RegisterEntityCopyWith<$Res> {
  __$$_RegisterEntityCopyWithImpl(
      _$_RegisterEntity _value, $Res Function(_$_RegisterEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? retryPassword = null,
  }) {
    return _then(_$_RegisterEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      retryPassword: null == retryPassword
          ? _value.retryPassword
          : retryPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterEntity implements _RegisterEntity {
  const _$_RegisterEntity(
      {this.name = '',
      this.email = '',
      this.password = '',
      this.retryPassword = ''});

  /// The name field of the user
  @override
  @JsonKey()
  final String name;

  /// The email field of the user
  @override
  @JsonKey()
  final String email;

  /// The password field of the user
  @override
  @JsonKey()
  final String password;

  /// The retyped password field of the user for conformation
  @override
  @JsonKey()
  final String retryPassword;

  @override
  String toString() {
    return 'RegisterEntity(name: $name, email: $email, password: $password, retryPassword: $retryPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.retryPassword, retryPassword) ||
                other.retryPassword == retryPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, retryPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterEntityCopyWith<_$_RegisterEntity> get copyWith =>
      __$$_RegisterEntityCopyWithImpl<_$_RegisterEntity>(this, _$identity);
}

abstract class _RegisterEntity implements RegisterEntity {
  const factory _RegisterEntity(
      {final String name,
      final String email,
      final String password,
      final String retryPassword}) = _$_RegisterEntity;

  @override

  /// The name field of the user
  String get name;
  @override

  /// The email field of the user
  String get email;
  @override

  /// The password field of the user
  String get password;
  @override

  /// The retyped password field of the user for conformation
  String get retryPassword;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterEntityCopyWith<_$_RegisterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
