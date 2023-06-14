// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kelompok_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kelompok _$KelompokFromJson(Map<String, dynamic> json) {
  return _Kelompok.fromJson(json);
}

/// @nodoc
mixin _$Kelompok {
  dynamic get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get topik => throw _privateConstructorUsedError;
  String get prodi => throw _privateConstructorUsedError;
  String get angkatan => throw _privateConstructorUsedError;
  List<Dosen>? get pembimbing => throw _privateConstructorUsedError;
  List<Dosen>? get penguji => throw _privateConstructorUsedError;
  KRS? get krs => throw _privateConstructorUsedError;
  List<Mahasiswa>? get mahasiswa => throw _privateConstructorUsedError;
  List<Request>? get requests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KelompokCopyWith<Kelompok> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KelompokCopyWith<$Res> {
  factory $KelompokCopyWith(Kelompok value, $Res Function(Kelompok) then) =
      _$KelompokCopyWithImpl<$Res, Kelompok>;
  @useResult
  $Res call(
      {dynamic id,
      String name,
      String topik,
      String prodi,
      String angkatan,
      List<Dosen>? pembimbing,
      List<Dosen>? penguji,
      KRS? krs,
      List<Mahasiswa>? mahasiswa,
      List<Request>? requests});

  $KRSCopyWith<$Res>? get krs;
}

/// @nodoc
class _$KelompokCopyWithImpl<$Res, $Val extends Kelompok>
    implements $KelompokCopyWith<$Res> {
  _$KelompokCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? topik = null,
    Object? prodi = null,
    Object? angkatan = null,
    Object? pembimbing = freezed,
    Object? penguji = freezed,
    Object? krs = freezed,
    Object? mahasiswa = freezed,
    Object? requests = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topik: null == topik
          ? _value.topik
          : topik // ignore: cast_nullable_to_non_nullable
              as String,
      prodi: null == prodi
          ? _value.prodi
          : prodi // ignore: cast_nullable_to_non_nullable
              as String,
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      pembimbing: freezed == pembimbing
          ? _value.pembimbing
          : pembimbing // ignore: cast_nullable_to_non_nullable
              as List<Dosen>?,
      penguji: freezed == penguji
          ? _value.penguji
          : penguji // ignore: cast_nullable_to_non_nullable
              as List<Dosen>?,
      krs: freezed == krs
          ? _value.krs
          : krs // ignore: cast_nullable_to_non_nullable
              as KRS?,
      mahasiswa: freezed == mahasiswa
          ? _value.mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as List<Mahasiswa>?,
      requests: freezed == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Request>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KRSCopyWith<$Res>? get krs {
    if (_value.krs == null) {
      return null;
    }

    return $KRSCopyWith<$Res>(_value.krs!, (value) {
      return _then(_value.copyWith(krs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_KelompokCopyWith<$Res> implements $KelompokCopyWith<$Res> {
  factory _$$_KelompokCopyWith(
          _$_Kelompok value, $Res Function(_$_Kelompok) then) =
      __$$_KelompokCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String name,
      String topik,
      String prodi,
      String angkatan,
      List<Dosen>? pembimbing,
      List<Dosen>? penguji,
      KRS? krs,
      List<Mahasiswa>? mahasiswa,
      List<Request>? requests});

  @override
  $KRSCopyWith<$Res>? get krs;
}

/// @nodoc
class __$$_KelompokCopyWithImpl<$Res>
    extends _$KelompokCopyWithImpl<$Res, _$_Kelompok>
    implements _$$_KelompokCopyWith<$Res> {
  __$$_KelompokCopyWithImpl(
      _$_Kelompok _value, $Res Function(_$_Kelompok) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? topik = null,
    Object? prodi = null,
    Object? angkatan = null,
    Object? pembimbing = freezed,
    Object? penguji = freezed,
    Object? krs = freezed,
    Object? mahasiswa = freezed,
    Object? requests = freezed,
  }) {
    return _then(_$_Kelompok(
      id: freezed == id ? _value.id! : id,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topik: null == topik
          ? _value.topik
          : topik // ignore: cast_nullable_to_non_nullable
              as String,
      prodi: null == prodi
          ? _value.prodi
          : prodi // ignore: cast_nullable_to_non_nullable
              as String,
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      pembimbing: freezed == pembimbing
          ? _value._pembimbing
          : pembimbing // ignore: cast_nullable_to_non_nullable
              as List<Dosen>?,
      penguji: freezed == penguji
          ? _value._penguji
          : penguji // ignore: cast_nullable_to_non_nullable
              as List<Dosen>?,
      krs: freezed == krs
          ? _value.krs
          : krs // ignore: cast_nullable_to_non_nullable
              as KRS?,
      mahasiswa: freezed == mahasiswa
          ? _value._mahasiswa
          : mahasiswa // ignore: cast_nullable_to_non_nullable
              as List<Mahasiswa>?,
      requests: freezed == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<Request>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Kelompok implements _Kelompok {
  _$_Kelompok(
      {this.id = 0,
      this.name = '',
      this.topik = '',
      this.prodi = '',
      this.angkatan = '',
      final List<Dosen>? pembimbing,
      final List<Dosen>? penguji,
      this.krs,
      final List<Mahasiswa>? mahasiswa,
      final List<Request>? requests})
      : _pembimbing = pembimbing,
        _penguji = penguji,
        _mahasiswa = mahasiswa,
        _requests = requests;

  factory _$_Kelompok.fromJson(Map<String, dynamic> json) =>
      _$$_KelompokFromJson(json);

  @override
  @JsonKey()
  final dynamic id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String topik;
  @override
  @JsonKey()
  final String prodi;
  @override
  @JsonKey()
  final String angkatan;
  final List<Dosen>? _pembimbing;
  @override
  List<Dosen>? get pembimbing {
    final value = _pembimbing;
    if (value == null) return null;
    if (_pembimbing is EqualUnmodifiableListView) return _pembimbing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Dosen>? _penguji;
  @override
  List<Dosen>? get penguji {
    final value = _penguji;
    if (value == null) return null;
    if (_penguji is EqualUnmodifiableListView) return _penguji;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final KRS? krs;
  final List<Mahasiswa>? _mahasiswa;
  @override
  List<Mahasiswa>? get mahasiswa {
    final value = _mahasiswa;
    if (value == null) return null;
    if (_mahasiswa is EqualUnmodifiableListView) return _mahasiswa;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Request>? _requests;
  @override
  List<Request>? get requests {
    final value = _requests;
    if (value == null) return null;
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Kelompok(id: $id, name: $name, topik: $topik, prodi: $prodi, angkatan: $angkatan, pembimbing: $pembimbing, penguji: $penguji, krs: $krs, mahasiswa: $mahasiswa, requests: $requests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kelompok &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.topik, topik) || other.topik == topik) &&
            (identical(other.prodi, prodi) || other.prodi == prodi) &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            const DeepCollectionEquality()
                .equals(other._pembimbing, _pembimbing) &&
            const DeepCollectionEquality().equals(other._penguji, _penguji) &&
            (identical(other.krs, krs) || other.krs == krs) &&
            const DeepCollectionEquality()
                .equals(other._mahasiswa, _mahasiswa) &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      name,
      topik,
      prodi,
      angkatan,
      const DeepCollectionEquality().hash(_pembimbing),
      const DeepCollectionEquality().hash(_penguji),
      krs,
      const DeepCollectionEquality().hash(_mahasiswa),
      const DeepCollectionEquality().hash(_requests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KelompokCopyWith<_$_Kelompok> get copyWith =>
      __$$_KelompokCopyWithImpl<_$_Kelompok>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KelompokToJson(
      this,
    );
  }
}

abstract class _Kelompok implements Kelompok {
  factory _Kelompok(
      {final dynamic id,
      final String name,
      final String topik,
      final String prodi,
      final String angkatan,
      final List<Dosen>? pembimbing,
      final List<Dosen>? penguji,
      final KRS? krs,
      final List<Mahasiswa>? mahasiswa,
      final List<Request>? requests}) = _$_Kelompok;

  factory _Kelompok.fromJson(Map<String, dynamic> json) = _$_Kelompok.fromJson;

  @override
  dynamic get id;
  @override
  String get name;
  @override
  String get topik;
  @override
  String get prodi;
  @override
  String get angkatan;
  @override
  List<Dosen>? get pembimbing;
  @override
  List<Dosen>? get penguji;
  @override
  KRS? get krs;
  @override
  List<Mahasiswa>? get mahasiswa;
  @override
  List<Request>? get requests;
  @override
  @JsonKey(ignore: true)
  _$$_KelompokCopyWith<_$_Kelompok> get copyWith =>
      throw _privateConstructorUsedError;
}
