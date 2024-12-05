import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: baseUrl)
abstract class TiposSanguineosRest {

  static Future<List<TiposSanguineos>> getTiposSanguineos() async {
    db.open();
    final List<Map<String, dynamic>> tiposSanguineos = [];
    await db.collection('tipos_sanguineos').find().forEach(tiposSanguineos.add);
    db.close();
    return tiposSanguineos.map((e) => TiposSanguineos.fromJson(e)).toList();
  }

  static Future<TiposSanguineos> getTipoSanguineoById(@Path() int id) async {
    db.open();
    final Map<String, dynamic> funcionario = await db.collection('tipos_sanguineos').findOne(id) ?? {};
    db.close();
    return TiposSanguineos.fromJson(funcionario);
  }


  static Future<dynamic> createTipoSanguineo(
      @Body() Map<String, dynamic> tipoSanguineo) async {
    db.open();
    await db.collection('tipos_sanguineos').insert(tipoSanguineo);
    db.close();
  }



  static Future<dynamic> updateTipoSanguineo(
      {@Path() required int id,
      @Body() required Map<String, dynamic> tipoSanguineo}) async {
    db.open();
    await db.collection('tipos_sanguineos').updateOne(id, tipoSanguineo);
    db.close();
  }



  static Future<dynamic> deleteTipoSanguineo(@Path() int id) async {
    db.open();
    await db.collection('tipos_sanguineos').deleteOne(id);
    db.close();
  }


}
