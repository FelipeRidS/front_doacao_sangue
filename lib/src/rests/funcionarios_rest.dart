import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/classes/classes_padrao/funcionarios.dart';
import 'package:mongo_dart/mongo_dart.dart';

abstract class FuncionariosRest {

  static Future<List<Funcionarios>> getFuncionarios() async {
    await db.open(tlsAllowInvalidCertificates: true);
    final List<Map<String, dynamic>> funcionarios = await db.collection('Funcionarios').find().toList();
    final a = funcionarios.map((e) => {...e, 'codFuncionario': e['_id']});
    db.close();
    return a.map((e) => Funcionarios.fromJson(e)).toList();
  }

  static Future<Funcionarios> getFuncionarioById( int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    final Map<String, dynamic> funcionario = await db.collection('Funcionarios').findOne(where.eq('_id', id)) ?? {};
    db.close();
    return Funcionarios.fromJson(funcionario);
  }


  static Future<dynamic> createFuncionario( Map<String, dynamic> funcionario) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Funcionarios').insert(funcionario);
    db.close();
  }



  static Future<dynamic> updateFuncionario(
      { required int id,
       required Map<String, dynamic> funcionario}) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Funcionarios').updateOne(where.eq('_id', id), funcionario);
    db.close();
  }



  static Future<dynamic> deleteFuncionario( int id) async {
    await db.open(tlsAllowInvalidCertificates: true);
    await db.collection('Funcionarios').deleteOne(where.eq('_id', id));
    db.close();
  }


}
