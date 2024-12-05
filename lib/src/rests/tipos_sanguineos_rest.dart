import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/tipos_sanguineos.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: baseUrl)
abstract class TiposSanguineosRest {
  static Future<List<TiposSanguineos>> getTiposSanguineos() async {
    try {
      await db.open(tlsAllowInvalidCertificates: true);
      final List<Map<String, dynamic>> tiposSanguineos = await db.collection('TiposSanguineos').find().toList();
      final a = tiposSanguineos.map((e) => {...e, 'codTipoSanguineo': e['_id']});
      db.close();
      return a.map((e) => TiposSanguineos.fromJson(e)).toList();
    } catch (e, s) {
      print(e);
      print(s);
      rethrow;
    }
  }

  static Future<TiposSanguineos> getTipoSanguineoById(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    final Map<String, dynamic> funcionario = await db.collection('TiposSanguineos').findOne(where.eq('_id', id)) ?? {};
    db.close();
    return TiposSanguineos.fromJson(funcionario);
  }

  static Future<dynamic> createTipoSanguineo(Map<String, dynamic> tipoSanguineo) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('TiposSanguineos').insert(tipoSanguineo);
    db.close();
  }

  static Future<dynamic> updateTipoSanguineo({required int id, required Map<String, dynamic> tipoSanguineo}) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('TiposSanguineos').updateOne(where.eq('_id', id), tipoSanguineo);
    db.close();
  }

  static Future<dynamic> deleteTipoSanguineo(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('TiposSanguineos').deleteOne(where.eq('_id', id));
    db.close();
  }
}
