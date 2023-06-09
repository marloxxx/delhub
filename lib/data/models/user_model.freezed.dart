// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  Mahasiswa? get mahasiswa => throw _privateConstructorUsedError;
  Dosen? get dosen => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String password,
      String token,
      Mahasiswa? mahasiswa,
      Dosen? dosen,
      String role});

  $MahasiswaCopyWith<$Res>? get mahasiswa;
  $DosenCopyWith<$Res>? get dosen;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? token = null,
    Object? mahasiswa = freezed,
    Object? dosen = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      mahasiswa: freezed == mahasiswa
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa?,
      dosen: freezed == dosen
          ? _value.dosen
          : dosen // ignore: cast_nullable_to_non_nullable
              as Dosen?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MahasiswaCopyWith<$Res>? get mahasiswa {
    if (_value.mahasiswa == null) {
      return null;
    }

    return $MahasiswaCopyWith<$Res>(_value.mahasiswa!, (value) {
      return _then(_value.copyWith(mahasiswa: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DosenCopyWith<$Res>? get dosen {
    if (_value.dosen == null) {
      return null;
    }

    return $DosenCopyWith<$Res>(_value.dosen!, (value) {
      return _then(_value.copyWith(dosen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String password,
      String token,
      Mahasiswa? mahasiswa,
      Dosen? dosen,
      String role});

  @override
  $MahasiswaCopyWith<$Res>? get mahasiswa;
  @override
  $DosenCopyWith<$Res>? get dosen;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? token = null,
    Object? mahasiswa = freezed,
    Object? dosen = freezed,
    Object? role = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      mahasiswa: freezed == mahasiswa
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as Mahasiswa?,
      dosen: freezed == dosen
          ? _value.dosen
          : dosen // ignore: cast_nullable_to_non_nullable
              as Dosen?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {this.id = 0,
      this.name = '',
      this.email = '',
      this.password = '',
      this.token = '',
      this.mahasiswa,
      this.dosen,
      this.role = ''});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String token;
  @override
  final Mahasiswa? mahasiswa;
  @override
  final Dosen? dosen;
  @override
  @JsonKey()
  final String role;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, password: $password, token: $token, mahasiswa: $mahasiswa, dosen: $dosen, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.mahasiswa, mahasiswa) ||
                other.mahasiswa == mahasiswa) &&
            (identical(other.dosen, dosen) || other.dosen == dosen) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, password, token, mahasiswa, dosen, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {final int id,
      final String name,
      final String email,
      final String password,
      final String token,
      final Mahasiswa? mahasiswa,
      final Dosen? dosen,
      final String role}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get token;
  @override
  Mahasiswa? get mahasiswa;
  @override
  Dosen? get dosen;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
