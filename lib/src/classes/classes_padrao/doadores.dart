import 'package:freezed_annotation/freezed_annotation.dart';
part 'doadores.freezed.dart';
part 'doadores.g.dart';

@freezed
class Doadores with _$Doadores {
  const factory Doadores({
    @Default(0) int codDoador,
    @Default('') String nome,
    @Default('') String sobrenome,
    @Default('') String? cpf,
    @Default('') String telefone,
    @Default(0) int codTipoSanguineo,
    @Default('') String endereco,
  }) = _Doadores;

  factory Doadores.fromJson(Map<String, dynamic> json) =>
      _$DoadoresFromJson(json);
}
