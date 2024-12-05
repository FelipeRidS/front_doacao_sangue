import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_relatorio/centros_mais_doacoes.dart';
import 'package:front_doacao_sangue/src/classes/classes_relatorio/doadores_mais_doacoes.dart';
import 'package:front_doacao_sangue/src/classes/classes_relatorio/tipos_sang_mais_retirados.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: baseUrl)
abstract class RelatoriosRest {

  static Future<List<DoadoresMaisDoacoes>> getDoadoresDoaramMaisSangue() async {
    return List.generate(5, (_) =>  DoadoresMaisDoacoes(nome: '',qtdMls: '', qtdRegistros: 1, sobrenome: ''));
  }

  static Future<List<CentrosMaisDoacoes>> getCentrosComMaisColetas() async {
    return List.generate(5, (_) =>  CentrosMaisDoacoes(endereco: '', nomeLocal: '', qtdMls: '', qtdRegistros: 2));
  }

  static Future<List<TiposSangMaisRetirados>> getTiposSanguineosMaisRetirados() async {
    return List.generate(5, (_) =>  TiposSangMaisRetirados(nomeTipoSang: '', qtdMls: '', qtdRegistros: 3, totalDisponivel: 3));
  }
}
