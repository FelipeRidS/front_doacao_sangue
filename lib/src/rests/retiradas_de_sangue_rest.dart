import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/retiradas_de_sangue.dart';

abstract class RetiradasDeSangueRest {

  static Future<List<RetiradasDeSangue>> getRetiradasDeSangue()  async {
    db.open();
    final List<Map<String, dynamic>> retiradasSangue = [];
    await db.collection('retiradas_sangue').find().forEach(retiradasSangue.add);
    db.close();
    return retiradasSangue.map((e) => RetiradasDeSangue.fromJson(e)).toList();
  }

  static Future<RetiradasDeSangue> getRetiradaDeSangueById(int id)  async {
    db.open();
    final Map<String, dynamic> funcionario = await db.collection('retiradas_sangue').findOne(id) ?? {};
    db.close();
    return RetiradasDeSangue.fromJson(funcionario);
  }


  static Future<dynamic> createRetiradaDeSangue(
      Map<String, dynamic> funcionario)  async {
    db.open();
    await db.collection('retiradas_sangue').insert(funcionario);
    db.close();
  }



  static Future<dynamic> updateRetiradaDeSangue(
      {required int id,
      required Map<String, dynamic> retiradaDeSangue})  async {
    db.open();
    await db.collection('retiradas_sangue').updateOne(id, retiradaDeSangue);
    db.close();
  }



  static Future<dynamic> deleteRetiradaDeSangue(int id)  async {
    db.open();
    await db.collection('retiradas_sangue').deleteOne(id);
    db.close();
  }


}
