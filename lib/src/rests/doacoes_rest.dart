import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doacoes.dart';
import 'package:mongo_dart/mongo_dart.dart';

abstract class DoacoesRest {

  static Future<List<Doacoes>> getDoacoes() async {
    await db.open(tlsAllowInvalidCertificates: true);
    final List<Map<String, dynamic>> doacoes = await db.collection('Doacoes').find().toList();
      final a = doacoes.map((e) => {...e, 'codDoacao': e['_id']});
    db.close();
    return a.map((e) => Doacoes.fromJson(e)).toList();
  }

  static Future<Doacoes> getDoacaoById(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    final Map<String, dynamic> doacao = await db.collection('Doacoes').findOne(where.eq('_id', id)) ?? {};
    db.close();
    return Doacoes.fromJson(doacao);
  }


  static Future<dynamic> createDoacao(Map<String, dynamic> doacao) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Doacoes').insert(doacao);
    db.close();
  }



  static Future<dynamic> updateDoacao(
      {required int id, required Map<String, dynamic> doacao}) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Doacoes').updateOne(where.eq('_id', id), doacao);
    db.close();
  }



  static Future<dynamic> deleteDoacao(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Doacoes').deleteOne(where.eq('_id', id));
    db.close();
  }


}
