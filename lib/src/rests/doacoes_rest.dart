import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/doacoes.dart';

abstract class DoacoesRest {

  static Future<List<Doacoes>> getDoacoes() async {
    db.open();
    final List<Map<String, dynamic>> doacoes = [];
    await db.collection('doacoes').find().forEach(doacoes.add);
    db.close();
    return doacoes.map((e) => Doacoes.fromJson(e)).toList();
  }

  static Future<Doacoes> getDoacaoById(int id) async {
    db.open();
    final Map<String, dynamic> doacao = await db.collection('doacoes').findOne(id) ?? {};
    db.close();
    return Doacoes.fromJson(doacao);
  }


  static Future<dynamic> createDoacao(Map<String, dynamic> doacao) async {
    db.open();
    await db.collection('doacoes').insert(doacao);
    db.close();
  }



  static Future<dynamic> updateDoacao(
      {required int id, required Map<String, dynamic> doacao}) async {
    db.open();
    await db.collection('doacoes').updateOne(id, doacao);
    db.close();
  }



  static Future<dynamic> deleteDoacao(int id) async {
    db.open();
    await db.collection('doacoes').deleteOne(id);
    db.close();
  }


}
