import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/retiradas_de_sangue.dart';
import 'package:mongo_dart/mongo_dart.dart';

abstract class RetiradasDeSangueRest {

  static Future<List<RetiradasDeSangue>> getRetiradasDeSangue()  async {
    await db.open(tlsAllowInvalidCertificates: true);
    final List<Map<String, dynamic>> retiradasSangue = await db.collection('RetiradasSangue').find().toList();
    final a = retiradasSangue.map((e) => {...e, 'codRetiradaSangue': e['_id']});
    db.close();
    return a.map((e) => RetiradasDeSangue.fromJson(e)).toList();
  }

  static Future<RetiradasDeSangue> getRetiradaDeSangueById(int id)  async {
    await db.open(tlsAllowInvalidCertificates: true);
    final Map<String, dynamic> funcionario = await db.collection('RetiradasSangue').findOne(where.eq('_id', id)) ?? {};
    db.close();
    return RetiradasDeSangue.fromJson(funcionario);
  }


  static Future<dynamic> createRetiradaDeSangue(
      Map<String, dynamic> funcionario)  async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('RetiradasSangue').insert(funcionario);
    db.close();
  }



  static Future<dynamic> updateRetiradaDeSangue(
      {required int id,
      required Map<String, dynamic> retiradaDeSangue})  async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('RetiradasSangue').updateOne(where.eq('_id', id), retiradaDeSangue);
    db.close();
  }



  static Future<dynamic> deleteRetiradaDeSangue(int id)  async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('RetiradasSangue').deleteOne(where.eq('_id', id));
    db.close();
  }


}
