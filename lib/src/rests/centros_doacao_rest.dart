import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/centros_doacao.dart';

class CentrosDeDoacaoRest {
  static Future<List<CentrosDeDoacao>> getCentrosDeDoacao() async {
    try {
      await db.open(tlsAllowInvalidCertificates: true);
      // await db.authenticate('admin', 'udesc');
      final List<Map<String, dynamic>> centros = [];
      await db.collection('centros_doacao').find().forEach(centros.add);
      db.close();
      return centros.map((e) => CentrosDeDoacao.fromJson(e)).toList();
    } catch (e, s) {
      print(e);
      print(s);
      rethrow;
    }
  }

  static Future<CentrosDeDoacao> getCentroDeDoacaoById(int id) async {
    db.open();
    final Map<String, dynamic> centro =
        await db.collection('centros_doacao').findOne(id) ?? {};
    db.close();
    return CentrosDeDoacao.fromJson(centro);
  }

  static Future<void> createCentroDeDoacao(
      Map<String, dynamic> centroDeDoacao) async {
    db.open();
    await db.collection('centros_doacao').insert(centroDeDoacao);
    db.close();
  }

  static Future<void> updateCentroDeDoacao({
    required int id,
    required Map<String, dynamic> centroDeDoacao,
  }) async {
    db.open();
    await db.collection('centros_doacao').updateOne(id, centroDeDoacao);
    db.close();
  }

  static Future<void> deleteCentroDeDoacao(int id) async {
    db.open();
    await db.collection('centros_doacao').deleteOne(id);
    db.close();
  }
}
