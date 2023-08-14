// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterParams {
  /// The name of the user
  String get name => throw _privateConstructorUsedError;

  /// The email of the user
  String get email => throw _privateConstructorUsedError;

  /// The password of the user
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterParamsCopyWith<RegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParamsCopyWith<$Res> {
  factory $RegisterParamsCopyWith(
          RegisterParams value, $Res Function(RegisterParams) then) =
      _$RegisterParamsCopyWithImpl<$Res, RegisterParams>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$RegisterParamsCopyWithImpl<$Res, $Val extends RegisterParams>
    implements $RegisterParamsCopyWith<$Res> {
  _$RegisterParamsCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterParamsCopyWith<$Res>
    implements $RegisterParamsCopyWith<$Res> {
  factory _$$_RegisterParamsCopyWith(
          _$_RegisterParams value, $Res Function(_$_RegisterParams) then) =
      __$$_RegisterParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$_RegisterParamsCopyWithImpl<$Res>
    extends _$RegisterParamsCopyWithImpl<$Res, _$_RegisterParams>
    implements _$$_RegisterParamsCopyWith<$Res> {
  __$$_RegisterParamsCopyWithImpl(
      _$_RegisterParams _value, $Res Function(_$_RegisterParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_RegisterParams(
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
    ));
  }
}

/// @nodoc

class _$_RegisterParams implements _RegisterParams {
  const _$_RegisterParams(
      {this.name = '', this.email = '', this.password = ''});

  /// The name of the user
  @override
  @JsonKey()
  final String name;

  /// The email of the user
  @override
  @JsonKey()
  final String email;

  /// The password of the user
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'RegisterParams(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterParamsCopyWith<_$_RegisterParams> get copyWith =>
      __$$_RegisterParamsCopyWithImpl<_$_RegisterParams>(this, _$identity);
}

abstract class _RegisterParams implements RegisterParams {
  const factory _RegisterParams(
      {final String name,
      final String email,
      final String password}) = _$_RegisterParams;

  @override

  /// The name of the user
  String get name;
  @override

  /// The email of the user
  String get email;
  @override

  /// The password of the user
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterParamsCopyWith<_$_RegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterSavedParams {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterSavedParamsCopyWith<RegisterSavedParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSavedParamsCopyWith<$Res> {
  factory $RegisterSavedParamsCopyWith(
          RegisterSavedParams value, $Res Function(RegisterSavedParams) then) =
      _$RegisterSavedParamsCopyWithImpl<$Res, RegisterSavedParams>;
  @useResult
  $Res call({String uid, String name, String email});
}

/// @nodoc
class _$RegisterSavedParamsCopyWithImpl<$Res, $Val extends RegisterSavedParams>
    implements $RegisterSavedParamsCopyWith<$Res> {
  _$RegisterSavedParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterSavedParamsCopyWith<$Res>
    implements $RegisterSavedParamsCopyWith<$Res> {
  factory _$$_RegisterSavedParamsCopyWith(_$_RegisterSavedParams value,
          $Res Function(_$_RegisterSavedParams) then) =
      __$$_RegisterSavedParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, String email});
}

/// @nodoc
class __$$_RegisterSavedParamsCopyWithImpl<$Res>
    extends _$RegisterSavedParamsCopyWithImpl<$Res, _$_RegisterSavedParams>
    implements _$$_RegisterSavedParamsCopyWith<$Res> {
  __$$_RegisterSavedParamsCopyWithImpl(_$_RegisterSavedParams _value,
      $Res Function(_$_RegisterSavedParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$_RegisterSavedParams(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterSavedParams implements _RegisterSavedParams {
  const _$_RegisterSavedParams(
      {this.uid = 'name', this.name = 'name', this.email = 'name'});

  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'RegisterSavedParams(uid: $uid, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterSavedParams &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterSavedParamsCopyWith<_$_RegisterSavedParams> get copyWith =>
      __$$_RegisterSavedParamsCopyWithImpl<_$_RegisterSavedParams>(
          this, _$identity);
}

abstract class _RegisterSavedParams implements RegisterSavedParams {
  const factory _RegisterSavedParams(
      {final String uid,
      final String name,
      final String email}) = _$_RegisterSavedParams;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterSavedParamsCopyWith<_$_RegisterSavedParams> get copyWith =>
      throw _privateConstructorUsedError;
}
