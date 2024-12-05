import 'package:freezed_annotation/freezed_annotation.dart';
part 'tipos_sanguineos.freezed.dart';
part 'tipos_sanguineos.g.dart';

@freezed
class TiposSanguineos with _$TiposSanguineos {
  const factory TiposSanguineos({
    @Default(0) int codTipoSanguineo,
    @Default('') String nomeTipoSang,
    @Default(0) int totalDisponivel,
  }) = _TiposSanguineos;

  factory TiposSanguineos.fromJson(Map<String, dynamic> json) =>
      _$TiposSanguineosFromJson(json);
}
