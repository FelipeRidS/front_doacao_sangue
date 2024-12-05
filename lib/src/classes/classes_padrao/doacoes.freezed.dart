// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doacoes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doacoes _$DoacoesFromJson(Map<String, dynamic> json) {
  return _Doacoes.fromJson(json);
}

/// @nodoc
mixin _$Doacoes {
  int get codDoacao => throw _privateConstructorUsedError;
  int get codDoador => throw _privateConstructorUsedError;
  int get codFuncionario => throw _privateConstructorUsedError;
  int get codCentroDoacao => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  int get mlSangue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoacoesCopyWith<Doacoes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoacoesCopyWith<$Res> {
  factory $DoacoesCopyWith(Doacoes value, $Res Function(Doacoes) then) =
      _$DoacoesCopyWithImpl<$Res, Doacoes>;
  @useResult
  $Res call(
      {int codDoacao,
      int codDoador,
      int codFuncionario,
      int codCentroDoacao,
      String data,
      int mlSangue});
}

/// @nodoc
class _$DoacoesCopyWithImpl<$Res, $Val extends Doacoes>
    implements $DoacoesCopyWith<$Res> {
  _$DoacoesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codDoacao = null,
    Object? codDoador = null,
    Object? codFuncionario = null,
    Object? codCentroDoacao = null,
    Object? data = null,
    Object? mlSangue = null,
  }) {
    return _then(_value.copyWith(
      codDoacao: null == codDoacao
          ? _value.codDoacao
          : codDoacao // ignore: cast_nullable_to_non_nullable
              as int,
      codDoador: null == codDoador
          ? _value.codDoador
          : codDoador // ignore: cast_nullable_to_non_nullable
              as int,
      codFuncionario: null == codFuncionario
          ? _value.codFuncionario
          : codFuncionario // ignore: cast_nullable_to_non_nullable
              as int,
      codCentroDoacao: null == codCentroDoacao
          ? _value.codCentroDoacao
          : codCentroDoacao // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      mlSangue: null == mlSangue
          ? _value.mlSangue
          : mlSangue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoacoesImplCopyWith<$Res> implements $DoacoesCopyWith<$Res> {
  factory _$$DoacoesImplCopyWith(
          _$DoacoesImpl value, $Res Function(_$DoacoesImpl) then) =
      __$$DoacoesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int codDoacao,
      int codDoador,
      int codFuncionario,
      int codCentroDoacao,
      String data,
      int mlSangue});
}

/// @nodoc
class __$$DoacoesImplCopyWithImpl<$Res>
    extends _$DoacoesCopyWithImpl<$Res, _$DoacoesImpl>
    implements _$$DoacoesImplCopyWith<$Res> {
  __$$DoacoesImplCopyWithImpl(
      _$DoacoesImpl _value, $Res Function(_$DoacoesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codDoacao = null,
    Object? codDoador = null,
    Object? codFuncionario = null,
    Object? codCentroDoacao = null,
    Object? data = null,
    Object? mlSangue = null,
  }) {
    return _then(_$DoacoesImpl(
      codDoacao: null == codDoacao
          ? _value.codDoacao
          : codDoacao // ignore: cast_nullable_to_non_nullable
              as int,
      codDoador: null == codDoador
          ? _value.codDoador
          : codDoador // ignore: cast_nullable_to_non_nullable
              as int,
      codFuncionario: null == codFuncionario
          ? _value.codFuncionario
          : codFuncionario // ignore: cast_nullable_to_non_nullable
              as int,
      codCentroDoacao: null == codCentroDoacao
          ? _value.codCentroDoacao
          : codCentroDoacao // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      mlSangue: null == mlSangue
          ? _value.mlSangue
          : mlSangue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoacoesImpl implements _Doacoes {
  const _$DoacoesImpl(
      {this.codDoacao = 0,
      this.codDoador = 0,
      this.codFuncionario = 0,
      this.codCentroDoacao = 0,
      this.data = '',
      this.mlSangue = 0});

  factory _$DoacoesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoacoesImplFromJson(json);

  @override
  @JsonKey()
  final int codDoacao;
  @override
  @JsonKey()
  final int codDoador;
  @override
  @JsonKey()
  final int codFuncionario;
  @override
  @JsonKey()
  final int codCentroDoacao;
  @override
  @JsonKey()
  final String data;
  @override
  @JsonKey()
  final int mlSangue;

  @override
  String toString() {
    return 'Doacoes(codDoacao: $codDoacao, codDoador: $codDoador, codFuncionario: $codFuncionario, codCentroDoacao: $codCentroDoacao, data: $data, mlSangue: $mlSangue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoacoesImpl &&
            (identical(other.codDoacao, codDoacao) ||
                other.codDoacao == codDoacao) &&
            (identical(other.codDoador, codDoador) ||
                other.codDoador == codDoador) &&
            (identical(other.codFuncionario, codFuncionario) ||
                other.codFuncionario == codFuncionario) &&
            (identical(other.codCentroDoacao, codCentroDoacao) ||
                other.codCentroDoacao == codCentroDoacao) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.mlSangue, mlSangue) ||
                other.mlSangue == mlSangue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codDoacao, codDoador,
      codFuncionario, codCentroDoacao, data, mlSangue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoacoesImplCopyWith<_$DoacoesImpl> get copyWith =>
      __$$DoacoesImplCopyWithImpl<_$DoacoesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoacoesImplToJson(
      this,
    );
  }
}

abstract class _Doacoes implements Doacoes {
  const factory _Doacoes(
      {final int codDoacao,
      final int codDoador,
      final int codFuncionario,
      final int codCentroDoacao,
      final String data,
      final int mlSangue}) = _$DoacoesImpl;

  factory _Doacoes.fromJson(Map<String, dynamic> json) = _$DoacoesImpl.fromJson;

  @override
  int get codDoacao;
  @override
  int get codDoador;
  @override
  int get codFuncionario;
  @override
  int get codCentroDoacao;
  @override
  String get data;
  @override
  int get mlSangue;
  @override
  @JsonKey(ignore: true)
  _$$DoacoesImplCopyWith<_$DoacoesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
