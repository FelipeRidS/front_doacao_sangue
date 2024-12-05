// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doacoes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoacoesImpl _$$DoacoesImplFromJson(Map<String, dynamic> json) =>
    _$DoacoesImpl(
      codDoacao: (json['codDoacao'] as num?)?.toInt() ?? 0,
      codDoador: (json['codDoador'] as num?)?.toInt() ?? 0,
      codFuncionario: (json['codFuncionario'] as num?)?.toInt() ?? 0,
      codCentroDoacao: (json['codCentroDoacao'] as num?)?.toInt() ?? 0,
      data: json['data'] as String? ?? '',
      mlSangue: (json['mlSangue'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DoacoesImplToJson(_$DoacoesImpl instance) =>
    <String, dynamic>{
      'codDoacao': instance.codDoacao,
      'codDoador': instance.codDoador,
      'codFuncionario': instance.codFuncionario,
      'codCentroDoacao': instance.codCentroDoacao,
      'data': instance.data,
      'mlSangue': instance.mlSangue,
    };
