import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/funcionarios.dart';

abstract class FuncionariosRest {

  static Future<List<Funcionarios>> getFuncionarios() async {
    db.open();
    final List<Map<String, dynamic>> funcionarios = [];
    await db.collection('funcionarios').find().forEach(funcionarios.add);
    db.close();
    return funcionarios.map((e) => Funcionarios.fromJson(e)).toList();
  }

  static Future<Funcionarios> getFuncionarioById( int id) async {
    db.open();
    final Map<String, dynamic> funcionario = await db.collection('funcionarios').findOne(id) ?? {};
    db.close();
    return Funcionarios.fromJson(funcionario);
  }


  static Future<dynamic> createFuncionario( Map<String, dynamic> funcionario) async {
    db.open();
    await db.collection('funcionarios').insert(funcionario);
    db.close();
  }



  static Future<dynamic> updateFuncionario(
      { required int id,
       required Map<String, dynamic> funcionario}) async {
    db.open();
    await db.collection('funcionarios').updateOne(id, funcionario);
    db.close();
  }



  static Future<dynamic> deleteFuncionario( int id) async {
    db.open();
    await db.collection('funcionarios').deleteOne(id);
    db.close();
  }


}
