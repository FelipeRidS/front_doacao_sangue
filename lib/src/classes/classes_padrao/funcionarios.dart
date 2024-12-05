import 'package:freezed_annotation/freezed_annotation.dart';
part 'funcionarios.freezed.dart';
part 'funcionarios.g.dart';

@freezed
class Funcionarios with _$Funcionarios {
  const factory Funcionarios({
    @Default(0) int codFuncionario,
    @Default('') String cpf,
    @Default('') String email,
    @Default('') String nome,
    @Default('') String profissao,
  }) = _Funcionarios;

  factory Funcionarios.fromJson(Map<String, dynamic> json) =>
      _$FuncionariosFromJson(json);
}
