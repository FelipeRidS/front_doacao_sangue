import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doadores.dart';
import 'package:mongo_dart/mongo_dart.dart';

abstract class DoadoresRest {

  static Future<List<Doadores>> getDoadores() async {
    await db.open(tlsAllowInvalidCertificates: true);
    final List<Map<String, dynamic>> doadores = await db.collection('Doadores').find().toList();
      final a = doadores.map((e) => {...e, 'codDoador': e['_id']});
    db.close();
    return a.map((e) => Doadores.fromJson(e)).toList();
  }

  static Future<Doadores> getDoadorById(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    final Map<String, dynamic> doador = await db.collection('Doadores').findOne(where.eq('_id', id)) ?? {};
    db.close();
    return Doadores.fromJson(doador);
  }


  static Future<dynamic> createDoador(Map<String, dynamic> doador) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Doadores').insert(doador);
    db.close();
  }



  static Future<dynamic> updateDoador(
      {required int id, required Map<String, dynamic> doador}) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Doadores').updateOne(where.eq('_id', id), doador);
    db.close();
  }



  static Future<dynamic> deleteDoador(int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Doadores').deleteOne(where.eq('_id', id));
    db.close();
  }


}
