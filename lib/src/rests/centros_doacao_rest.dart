import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/centros_doacao.dart';
import 'package:mongo_dart/mongo_dart.dart';

class CentrosDeDoacaoRest {
  static Future<List<CentrosDeDoacao>> getCentrosDeDoacao() async {
    try {
      await db.open(
        tlsAllowInvalidCertificates: true,
      );
      // await db.authenticate('admin', 'udesc');
      print(await db.getCollectionNames());
      final List<Map<String, dynamic>> centros = await db.collection('CentrosDoacao').find().toList();
      final a = centros.map((e) => {...e, 'codCentroDoacao': e['_id']});
      print(a);
      db.close();
      return a.map((e) => CentrosDeDoacao.fromJson(e)).toList();
    } catch (e, s) {
      print(e);
      print(s);
      rethrow;
    }
  }

  static Future<CentrosDeDoacao> getCentroDeDoacaoById(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    final Map<String, dynamic> centro = await db.collection('CentrosDoacao').findOne(where.eq('_id', id)) ?? {};
    db.close();
    return CentrosDeDoacao.fromJson(centro);
  }

  static Future<void> createCentroDeDoacao(Map<String, dynamic> centroDeDoacao) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('CentrosDoacao').insert(centroDeDoacao);
    db.close();
  }

  static Future<void> updateCentroDeDoacao({
    required int id,
    required Map<String, dynamic> centroDeDoacao,
  }) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('CentrosDoacao').updateOne(where.eq('_id', id), centroDeDoacao);
    db.close();
  }

  static Future<void> deleteCentroDeDoacao(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('CentrosDoacao').deleteOne(where.eq('_id', id));
    db.close();
  }
}
