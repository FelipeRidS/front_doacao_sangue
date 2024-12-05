import 'package:mongo_dart/mongo_dart.dart';

Future<void> main() async {
  var db = await Db.create('mongodb+srv://<username>:<password>@cluster0.mongodb.net/test');
  await db.open();

  var doadoresCollection = db.collection('doadores');
  var funcionariosCollection = db.collection('funcionarios');
  var tiposSanguineosCollection = db.collection('tipos_sanguineos');
  var retiradasSangueCollection = db.collection('retiradas_sangue');
  var doacoesCollection = db.collection('doacoes');
  var centrosDoacaoCollection = db.collection('centros_doacao');

  await doadoresCollection.insertMany([
    {'_id': 1, 'nome': 'Carlos', 'sobrenome': 'Santos', 'cpf': '98765432100', 'telefone': '123456789', 'codTipoSanguineo': 1, 'endereco': 'Rua A, 123'},
    {'_id': 2, 'nome': 'Ana', 'sobrenome': 'Costa', 'cpf': '12345678900', 'telefone': '987654321', 'codTipoSanguineo': 2, 'endereco': 'Rua B, 456'},
    {'_id': 3, 'nome': 'Júlia', 'sobrenome': 'Souza', 'cpf': '23456789001', 'telefone': '234567890', 'codTipoSanguineo': 3, 'endereco': 'Rua C, 789'},
    {'_id': 4, 'nome': 'Rafael', 'sobrenome': 'Mendes', 'cpf': '34567890112', 'telefone': '345678901', 'codTipoSanguineo': 4, 'endereco': 'Rua D, 101'},
    {'_id': 5, 'nome': 'Mariana', 'sobrenome': 'Lopes', 'cpf': '45678901223', 'telefone': '456789012', 'codTipoSanguineo': 5, 'endereco': 'Rua E, 202'},
    {'_id': 6, 'nome': 'Gabriel', 'sobrenome': 'Fernandes', 'cpf': '56789012334', 'telefone': '567890123', 'codTipoSanguineo': 6, 'endereco': 'Rua F, 303'},
    {'_id': 7, 'nome': 'Fernanda', 'sobrenome': 'Ribeiro', 'cpf': '67890123445', 'telefone': '678901234', 'codTipoSanguineo': 7, 'endereco': 'Rua G, 404'},
    {'_id': 8, 'nome': 'Diego', 'sobrenome': 'Martins', 'cpf': '78901234556', 'telefone': '789012345', 'codTipoSanguineo': 8, 'endereco': 'Rua H, 505'},
    {'_id': 9, 'nome': 'Roberta', 'sobrenome': 'Nunes', 'cpf': '89012345667', 'telefone': '890123456', 'codTipoSanguineo': 1, 'endereco': 'Rua I, 606'},
    {'_id': 10, 'nome': 'Sérgio', 'sobrenome': 'Silva', 'cpf': '90123456778', 'telefone': '901234567', 'codTipoSanguineo': 2, 'endereco': 'Rua J, 707'},
    {'_id': 11, 'nome': 'Lucas', 'sobrenome': 'Almeida', 'cpf': '12345678901', 'telefone': '234567891', 'codTipoSanguineo': 3, 'endereco': 'Rua K, 808'},
    {'_id': 12, 'nome': 'Marcio', 'sobrenome': 'Pereira', 'cpf': '23456789012', 'telefone': '345678902', 'codTipoSanguineo': 4, 'endereco': 'Rua L, 909'},
    {'_id': 13, 'nome': 'Larissa', 'sobrenome': 'Freitas', 'cpf': '34567890123', 'telefone': '456789013', 'codTipoSanguineo': 5, 'endereco': 'Rua M, 1010'},
    {'_id': 14, 'nome': 'Felipe', 'sobrenome': 'Barros', 'cpf': '45678901234', 'telefone': '567890124', 'codTipoSanguineo': 6, 'endereco': 'Rua N, 1111'},
    {'_id': 15, 'nome': 'Tânia', 'sobrenome': 'Mota', 'cpf': '56789012345', 'telefone': '678901235', 'codTipoSanguineo': 7, 'endereco': 'Rua O, 1212'},
    {'_id': 16, 'nome': 'Bruno', 'sobrenome': 'Cavalcanti', 'cpf': '67890123456', 'telefone': '789012346', 'codTipoSanguineo': 8, 'endereco': 'Rua P, 1313'},
    {'_id': 17, 'nome': 'Tatiane', 'sobrenome': 'Cruz', 'cpf': '78901234567', 'telefone': '890123457', 'codTipoSanguineo': 1, 'endereco': 'Rua Q, 1414'},
    {'_id': 18, 'nome': 'Ricardo', 'sobrenome': 'Martins', 'cpf': '89012345678', 'telefone': '901234568', 'codTipoSanguineo': 2, 'endereco': 'Rua R, 1515'},
    {'_id': 19, 'nome': 'Cláudia', 'sobrenome': 'Vilela', 'cpf': '90123456789', 'telefone': '012345679', 'codTipoSanguineo': 3, 'endereco': 'Rua S, 1616'},
    {'_id': 20, 'nome': 'Natália', 'sobrenome': 'Moreira', 'cpf': '01234567890', 'telefone': '123456780', 'codTipoSanguineo': 4, 'endereco': 'Rua T, 1717'},
    {'_id': 21, 'nome': 'João', 'sobrenome': 'Carlos', 'cpf': '12345678902', 'telefone': '234567891', 'codTipoSanguineo': 5, 'endereco': 'Rua U, 1818'},
    {'_id': 22, 'nome': 'Mariana', 'sobrenome': 'Silveira', 'cpf': '23456789013', 'telefone': '345678902', 'codTipoSanguineo': 6, 'endereco': 'Rua V, 1919'},
    {'_id': 23, 'nome': 'Diego', 'sobrenome': 'Alves', 'cpf': '34567890124', 'telefone': '456789013', 'codTipoSanguineo': 7, 'endereco': 'Rua W, 2020'},
    {'_id': 24, 'nome': 'Fernanda', 'sobrenome': 'Duarte', 'cpf': '45678901235', 'telefone': '567890124', 'codTipoSanguineo': 8, 'endereco': 'Rua X, 2121'},
    {'_id': 25, 'nome': 'Sofia', 'sobrenome': 'Azevedo', 'cpf': '56789012346', 'telefone': '678901235', 'codTipoSanguineo': 1, 'endereco': 'Rua Y, 2222'},
    {'_id': 26, 'nome': 'Leonardo', 'sobrenome': 'Santos', 'cpf': '67890123457', 'telefone': '789012346', 'codTipoSanguineo': 2, 'endereco': 'Rua Z, 2323'},
    {'_id': 27, 'nome': 'Carmen', 'sobrenome': 'Oliveira', 'cpf': '78901234568', 'telefone': '890123457', 'codTipoSanguineo': 3, 'endereco': 'Rua AA, 2424'},
    {'_id': 28, 'nome': 'Juliano', 'sobrenome': 'Mendes', 'cpf': '89012345679', 'telefone': '901234568', 'codTipoSanguineo': 4, 'endereco': 'Rua AB, 2525'},
    {'_id': 29, 'nome': 'Larissa', 'sobrenome': 'Teixeira', 'cpf': '90123456780', 'telefone': '012345679', 'codTipoSanguineo': 5, 'endereco': 'Rua AC, 2626'},
    {'_id': 30, 'nome': 'Paulo', 'sobrenome': 'Ribeiro', 'cpf': '01234567891', 'telefone': '123456780', 'codTipoSanguineo': 6, 'endereco': 'Rua AD, 2727'},
  ]);

  await funcionariosCollection.insertMany([
  {'_id': 1, 'cpf': '12345678901', 'email': 'funcionario1@example.com', 'nome': 'João Silva', 'profissao': 'Enfermeiro'},
  {'_id': 2, 'cpf': '10987654321', 'email': 'funcionario2@example.com', 'nome': 'Maria Oliveira', 'profissao': 'Médico'},
  {'_id': 3, 'cpf': '11223344556', 'email': 'funcionario3@example.com', 'nome': 'Pedro Almeida', 'profissao': 'Técnico de Enfermagem'},
  {'_id': 4, 'cpf': '22334455667', 'email': 'funcionario4@example.com', 'nome': 'Fernanda Lima', 'profissao': 'Farmacêutica'},
  {'_id': 5, 'cpf': '33445566778', 'email': 'funcionario5@example.com', 'nome': 'Lucas Pereira', 'profissao': 'Enfermeiro'},
  {'_id': 6, 'cpf': '44556677889', 'email': 'funcionario6@example.com', 'nome': 'Juliana Costa', 'profissao': 'Médica'},
  {'_id': 7, 'cpf': '55667788990', 'email': 'funcionario7@example.com', 'nome': 'André Santos', 'profissao': 'Técnico de Enfermagem'},
  {'_id': 8, 'cpf': '66778899001', 'email': 'funcionario8@example.com', 'nome': 'Mariana Ferreira', 'profissao': 'Enfermeira'},
  {'_id': 9, 'cpf': '77889900112', 'email': 'funcionario9@example.com', 'nome': 'Gabriel Ribeiro', 'profissao': 'Médico'},
  {'_id': 10, 'cpf': '88990011223', 'email': 'funcionario10@example.com', 'nome': 'Bianca Nunes', 'profissao': 'Farmacêutica'},
  {'_id': 11, 'cpf': '99001122334', 'email': 'funcionario11@example.com', 'nome': 'Thiago Martins', 'profissao': 'Enfermeiro'},
  {'_id': 12, 'cpf': '10012223345', 'email': 'funcionario12@example.com', 'nome': 'Roberta Almeida', 'profissao': 'Técnica de Enfermagem'},
  {'_id': 13, 'cpf': '21023334456', 'email': 'funcionario13@example.com', 'nome': 'Fernando Lopes', 'profissao': 'Médico'},
  {'_id': 14, 'cpf': '32034445567', 'email': 'funcionario14@example.com', 'nome': 'Renata Souza', 'profissao': 'Enfermeira'},
  {'_id': 15, 'cpf': '43045556678', 'email': 'funcionario15@example.com', 'nome': 'Rafael Martins', 'profissao': 'Técnico de Enfermagem'},
  {'_id': 16, 'cpf': '54056667789', 'email': 'funcionario16@example.com', 'nome': 'Aline Vieira', 'profissao': 'Farmacêutica'},
  {'_id': 17, 'cpf': '65067778890', 'email': 'funcionario17@example.com', 'nome': 'Vinícius Costa', 'profissao': 'Enfermeiro'},
  {'_id': 18, 'cpf': '76078889901', 'email': 'funcionario18@example.com', 'nome': 'Tatiane Silva', 'profissao': 'Médica'},
  {'_id': 19, 'cpf': '87089990012', 'email': 'funcionario19@example.com', 'nome': 'Eduardo Pires', 'profissao': 'Técnico de Enfermagem'},
  {'_id': 20, 'cpf': '98090001123', 'email': 'funcionario20@example.com', 'nome': 'Patrícia Lima', 'profissao': 'Enfermeira'},
]);


  await tiposSanguineosCollection.insertMany([
    {'_id': 1, 'tipo_sanguineo': 'A+'},
    {'_id': 2, 'tipo_sanguineo': 'B+'},
    {'_id': 3, 'tipo_sanguineo': 'AB+'},
    {'_id': 4, 'tipo_sanguineo': 'O+'},
    {'_id': 5, 'tipo_sanguineo': 'A-'},
    {'_id': 6, 'tipo_sanguineo': 'B-'},
    {'_id': 7, 'tipo_sanguineo': 'AB-'},
    {'_id': 8, 'tipo_sanguineo': 'O-'},
  ]);

  await retiradasSangueCollection.insertMany([
    {'_id': 1, 'codTipoSanguineo': 1, 'mlSangue': 500},
    {'_id': 2, 'codTipoSanguineo': 2, 'mlSangue': 450},
    {'_id': 3, 'codTipoSanguineo': 3, 'mlSangue': 300},
    {'_id': 4, 'codTipoSanguineo': 4, 'mlSangue': 600},
    {'_id': 5, 'codTipoSanguineo': 5, 'mlSangue': 350},
    {'_id': 6, 'codTipoSanguineo': 6, 'mlSangue': 400},
    {'_id': 7, 'codTipoSanguineo': 7, 'mlSangue': 450},
    {'_id': 8, 'codTipoSanguineo': 8, 'mlSangue': 500},
  ]);

  await doacoesCollection.insertMany([
  {'_id': 1, 'codDoador': 1, 'codFuncionario': 1, 'codCentroDoacao': 1, 'data': '2024-01-01', 'mlSangue': 500},
  {'_id': 2, 'codDoador': 2, 'codFuncionario': 2, 'codCentroDoacao': 2, 'data': '2024-01-02', 'mlSangue': 450},
  {'_id': 3, 'codDoador': 3, 'codFuncionario': 3, 'codCentroDoacao': 1, 'data': '2024-01-03', 'mlSangue': 300},
  {'_id': 4, 'codDoador': 4, 'codFuncionario': 4, 'codCentroDoacao': 1, 'data': '2024-01-04', 'mlSangue': 450},
  {'_id': 5, 'codDoador': 5, 'codFuncionario': 5, 'codCentroDoacao': 2, 'data': '2024-01-05', 'mlSangue': 400},
  {'_id': 6, 'codDoador': 6, 'codFuncionario': 6, 'codCentroDoacao': 1, 'data': '2024-01-06', 'mlSangue': 350},
  {'_id': 7, 'codDoador': 7, 'codFuncionario': 7, 'codCentroDoacao': 2, 'data': '2024-01-07', 'mlSangue': 300},
  {'_id': 8, 'codDoador': 8, 'codFuncionario': 8, 'codCentroDoacao': 1, 'data': '2024-01-08', 'mlSangue': 600},
  {'_id': 9, 'codDoador': 9, 'codFuncionario': 9, 'codCentroDoacao': 1, 'data': '2024-01-09', 'mlSangue': 550},
  {'_id': 10, 'codDoador': 10, 'codFuncionario': 10, 'codCentroDoacao': 2, 'data': '2024-01-10', 'mlSangue': 480},
  {'_id': 11, 'codDoador': 11, 'codFuncionario': 11, 'codCentroDoacao': 1, 'data': '2024-01-11', 'mlSangue': 320},
  {'_id': 12, 'codDoador': 12, 'codFuncionario': 12, 'codCentroDoacao': 2, 'data': '2024-01-12', 'mlSangue': 370},
  {'_id': 13, 'codDoador': 13, 'codFuncionario': 13, 'codCentroDoacao': 1, 'data': '2024-01-13', 'mlSangue': 440},
  {'_id': 14, 'codDoador': 14, 'codFuncionario': 14, 'codCentroDoacao': 2, 'data': '2024-01-14', 'mlSangue': 490},
  {'_id': 15, 'codDoador': 15, 'codFuncionario': 15, 'codCentroDoacao': 1, 'data': '2024-01-15', 'mlSangue': 310},
  {'_id': 16, 'codDoador': 16, 'codFuncionario': 16, 'codCentroDoacao': 2, 'data': '2024-01-16', 'mlSangue': 430},
  {'_id': 17, 'codDoador': 17, 'codFuncionario': 17, 'codCentroDoacao': 1, 'data': '2024-01-17', 'mlSangue': 290},
  {'_id': 18, 'codDoador': 18, 'codFuncionario': 18, 'codCentroDoacao': 2, 'data': '2024-01-18', 'mlSangue': 550},
  {'_id': 19, 'codDoador': 19, 'codFuncionario': 19, 'codCentroDoacao': 1, 'data': '2024-01-19', 'mlSangue': 470},
  {'_id': 20, 'codDoador': 20, 'codFuncionario': 20, 'codCentroDoacao': 2, 'data': '2024-01-20', 'mlSangue': 400},
  {'_id': 21, 'codDoador': 1, 'codFuncionario': 1, 'codCentroDoacao': 1, 'data': '2024-01-21', 'mlSangue': 520},
  {'_id': 22, 'codDoador': 2, 'codFuncionario': 2, 'codCentroDoacao': 2, 'data': '2024-01-22', 'mlSangue': 310},
  {'_id': 23, 'codDoador': 3, 'codFuncionario': 3, 'codCentroDoacao': 1, 'data': '2024-01-23', 'mlSangue': 430},
  {'_id': 24, 'codDoador': 4, 'codFuncionario': 4, 'codCentroDoacao': 2, 'data': '2024-01-24', 'mlSangue': 270},
  {'_id': 25, 'codDoador': 5, 'codFuncionario': 5, 'codCentroDoacao': 1, 'data': '2024-01-25', 'mlSangue': 390},
  {'_id': 26, 'codDoador': 6, 'codFuncionario': 6, 'codCentroDoacao': 2, 'data': '2024-01-26', 'mlSangue': 460},
  {'_id': 27, 'codDoador': 7, 'codFuncionario': 7, 'codCentroDoacao': 1, 'data': '2024-01-27', 'mlSangue': 530},
  {'_id': 28, 'codDoador': 8, 'codFuncionario': 8, 'codCentroDoacao': 2, 'data': '2024-01-28', 'mlSangue': 330},
  {'_id': 29, 'codDoador': 9, 'codFuncionario': 9, 'codCentroDoacao': 1, 'data': '2024-01-29', 'mlSangue': 480},
  {'_id': 30, 'codDoador': 10, 'codFuncionario': 10, 'codCentroDoacao': 2, 'data': '2024-01-30', 'mlSangue': 310},
  {'_id': 31, 'codDoador': 11, 'codFuncionario': 11, 'codCentroDoacao': 1, 'data': '2024-01-31', 'mlSangue': 360},
  {'_id': 32, 'codDoador': 12, 'codFuncionario': 12, 'codCentroDoacao': 2, 'data': '2024-02-01', 'mlSangue': 490},
  {'_id': 33, 'codDoador': 13, 'codFuncionario': 13, 'codCentroDoacao': 1, 'data': '2024-02-02', 'mlSangue': 520},
  {'_id': 34, 'codDoador': 1, 'codFuncionario': 14, 'codCentroDoacao': 2, 'data': '2024-02-03', 'mlSangue': 370},
  {'_id': 35, 'codDoador': 2, 'codFuncionario': 15, 'codCentroDoacao': 1, 'data': '2024-02-04', 'mlSangue': 460},
  {'_id': 36, 'codDoador': 3, 'codFuncionario': 16, 'codCentroDoacao': 2, 'data': '2024-02-05', 'mlSangue': 390},
  {'_id': 37, 'codDoador': 4, 'codFuncionario': 17, 'codCentroDoacao': 1, 'data': '2024-02-06', 'mlSangue': 420},
  {'_id': 38, 'codDoador': 5, 'codFuncionario': 18, 'codCentroDoacao': 2, 'data': '2024-02-07', 'mlSangue': 550},
  {'_id': 39, 'codDoador': 6, 'codFuncionario': 19, 'codCentroDoacao': 1, 'data': '2024-02-08', 'mlSangue': 480},
  {'_id': 40, 'codDoador': 7, 'codFuncionario': 20, 'codCentroDoacao': 2, 'data': '2024-02-09', 'mlSangue': 530},
]);

  await db.close();
}
