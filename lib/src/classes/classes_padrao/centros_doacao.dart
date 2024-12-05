import 'package:freezed_annotation/freezed_annotation.dart';
part 'centros_doacao.freezed.dart';
part 'centros_doacao.g.dart';

@freezed
class CentrosDeDoacao with _$CentrosDeDoacao {
  const factory CentrosDeDoacao({
    @Default(0) int codCentroDoacao,
    @Default('') String nomeLocal,
    @Default('') String endereco,
  }) = _CentrosDeDoacao;

  factory CentrosDeDoacao.fromJson(Map<String, dynamic> json) =>
      _$CentrosDeDoacaoFromJson(json);
}
