// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Request _$RequestFromJson(Map<String, dynamic> json) {
  return _Request.fromJson(json);
}

/// @nodoc
mixin _$Request {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get waktu => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get is_done => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;
  Kelompok? get kelompok => throw _privateConstructorUsedError;
  Room? get ruangan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res, Request>;
  @useResult
  $Res call(
      {int id,
      String description,
      DateTime? waktu,
      String status,
      bool is_done,
      String file,
      Kelompok? kelompok,
      Room? ruangan});

  $KelompokCopyWith<$Res>? get kelompok;
  $RoomCopyWith<$Res>? get ruangan;
}

/// @nodoc
class _$RequestCopyWithImpl<$Res, $Val extends Request>
    implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? waktu = freezed,
    Object? status = null,
    Object? is_done = null,
    Object? file = null,
    Object? kelompok = freezed,
    Object? ruangan = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      waktu: freezed == waktu
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      is_done: null == is_done
          ? _value.is_done
          : is_done // ignore: cast_nullable_to_non_nullable
              as bool,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      kelompok: freezed == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok?,
      ruangan: freezed == ruangan
          ? _value.ruangan
          : ruangan // ignore: cast_nullable_to_non_nullable
              as Room?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KelompokCopyWith<$Res>? get kelompok {
    if (_value.kelompok == null) {
      return null;
    }

    return $KelompokCopyWith<$Res>(_value.kelompok!, (value) {
      return _then(_value.copyWith(kelompok: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res>? get ruangan {
    if (_value.ruangan == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.ruangan!, (value) {
      return _then(_value.copyWith(ruangan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$$_RequestCopyWith(
          _$_Request value, $Res Function(_$_Request) then) =
      __$$_RequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String description,
      DateTime? waktu,
      String status,
      bool is_done,
      String file,
      Kelompok? kelompok,
      Room? ruangan});

  @override
  $KelompokCopyWith<$Res>? get kelompok;
  @override
  $RoomCopyWith<$Res>? get ruangan;
}

/// @nodoc
class __$$_RequestCopyWithImpl<$Res>
    extends _$RequestCopyWithImpl<$Res, _$_Request>
    implements _$$_RequestCopyWith<$Res> {
  __$$_RequestCopyWithImpl(_$_Request _value, $Res Function(_$_Request) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? waktu = freezed,
    Object? status = null,
    Object? is_done = null,
    Object? file = null,
    Object? kelompok = freezed,
    Object? ruangan = freezed,
  }) {
    return _then(_$_Request(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      waktu: freezed == waktu
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      is_done: null == is_done
          ? _value.is_done
          : is_done // ignore: cast_nullable_to_non_nullable
              as bool,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      kelompok: freezed == kelompok
          ? _value.kelompok
          : kelompok // ignore: cast_nullable_to_non_nullable
              as Kelompok?,
      ruangan: freezed == ruangan
          ? _value.ruangan
          : ruangan // ignore: cast_nullable_to_non_nullable
              as Room?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Request implements _Request {
  _$_Request(
      {this.id = 0,
      this.description = '',
      this.waktu,
      this.status = '',
      this.is_done = false,
      this.file = '',
      this.kelompok,
      this.ruangan});

  factory _$_Request.fromJson(Map<String, dynamic> json) =>
      _$$_RequestFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? waktu;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final bool is_done;
  @override
  @JsonKey()
  final String file;
  @override
  final Kelompok? kelompok;
  @override
  final Room? ruangan;

  @override
  String toString() {
    return 'Request(id: $id, description: $description, waktu: $waktu, status: $status, is_done: $is_done, file: $file, kelompok: $kelompok, ruangan: $ruangan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Request &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.waktu, waktu) || other.waktu == waktu) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.is_done, is_done) || other.is_done == is_done) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.kelompok, kelompok) ||
                other.kelompok == kelompok) &&
            (identical(other.ruangan, ruangan) || other.ruangan == ruangan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, waktu, status,
      is_done, file, kelompok, ruangan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestCopyWith<_$_Request> get copyWith =>
      __$$_RequestCopyWithImpl<_$_Request>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestToJson(
      this,
    );
  }
}

abstract class _Request implements Request {
  factory _Request(
      {final int id,
      final String description,
      final DateTime? waktu,
      final String status,
      final bool is_done,
      final String file,
      final Kelompok? kelompok,
      final Room? ruangan}) = _$_Request;

  factory _Request.fromJson(Map<String, dynamic> json) = _$_Request.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  DateTime? get waktu;
  @override
  String get status;
  @override
  bool get is_done;
  @override
  String get file;
  @override
  Kelompok? get kelompok;
  @override
  Room? get ruangan;
  @override
  @JsonKey(ignore: true)
  _$$_RequestCopyWith<_$_Request> get copyWith =>
      throw _privateConstructorUsedError;
}
