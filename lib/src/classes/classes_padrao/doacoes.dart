import 'package:freezed_annotation/freezed_annotation.dart';
part 'doacoes.freezed.dart';
part 'doacoes.g.dart';

@freezed
class Doacoes with _$Doacoes {
  const factory Doacoes({
    @Default(0) int codDoacao,
    @Default(0) int codDoador,
    @Default(0) int codFuncionario,
    @Default(0) int codCentroDoacao,
    @Default('') String data,
    @Default(0) int mlSangue,
  }) = _Doacoes;

  factory Doacoes.fromJson(Map<String, dynamic> json) =>
      _$DoacoesFromJson(json);
}
