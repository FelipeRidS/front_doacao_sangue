// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doadores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoadoresImpl _$$DoadoresImplFromJson(Map<String, dynamic> json) =>
    _$DoadoresImpl(
      codDoador: (json['codDoador'] as num?)?.toInt() ?? 0,
      nome: json['nome'] as String? ?? '',
      sobrenome: json['sobrenome'] as String? ?? '',
      cpf: json['cpf'] as String? ?? '',
      telefone: json['telefone'] as String? ?? '',
      codTipoSanguineo: (json['codTipoSanguineo'] as num?)?.toInt() ?? 0,
      endereco: json['endereco'] as String? ?? '',
    );

Map<String, dynamic> _$$DoadoresImplToJson(_$DoadoresImpl instance) =>
    <String, dynamic>{
      'codDoador': instance.codDoador,
      'nome': instance.nome,
      'sobrenome': instance.sobrenome,
      'cpf': instance.cpf,
      'telefone': instance.telefone,
      'codTipoSanguineo': instance.codTipoSanguineo,
      'endereco': instance.endereco,
    };
