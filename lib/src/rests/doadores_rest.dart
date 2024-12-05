import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doadores.dart';

abstract class DoadoresRest {

  static Future<List<Doadores>> getDoadores() async {
    db.open();
    final List<Map<String, dynamic>> doadores = [];
    await db.collection('doadores').find().forEach(doadores.add);
    db.close();
    return doadores.map((e) => Doadores.fromJson(e)).toList();
  }

  static Future<Doadores> getDoadorById(int id) async {
    db.open();
    final Map<String, dynamic> doador = await db.collection('doadores').findOne(id) ?? {};
    db.close();
    return Doadores.fromJson(doador);
  }


  static Future<dynamic> createDoador(Map<String, dynamic> doador) async {
    db.open();
    await db.collection('doadores').insert(doador);
    db.close();
  }



  static Future<dynamic> updateDoador(
      {required int id, required Map<String, dynamic> doador}) async {
    db.open();
    await db.collection('doadores').updateOne(id, doador);
    db.close();
  }



  static Future<dynamic> deleteDoador(int id) async {
    db.open();
    await db.collection('doadores').deleteOne(id);
    db.close();
  }


}
