import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/components/descricao_component.dart';
import 'package:front_doacao_sangue/components/error_view.dart';
import 'package:front_doacao_sangue/components/loading_view.dart';
import 'package:front_doacao_sangue/components/snack_bar.dart';
import 'package:front_doacao_sangue/const_values.dart';
import 'package:front_doacao_sangue/main.dart';
import 'package:front_doacao_sangue/src/rests/funcionarios_rest.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final generateData = FutureProvider.autoDispose((ref) async {
  return await FuncionariosRest.getFuncionarios();
});

class ConsultarFuncionariosView extends ConsumerWidget {
  final bool delete;
  const ConsultarFuncionariosView({super.key, this.delete = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(generateData).when(
            data: (data) {
              return Padding(
                padding: safeArea,
                child: ListView(
                  children: [
                    DescricaoComponent(
                        titulo: delete
                            ? "Deletar registro"
                            : "Consulta de funcionários",
                        subtitulo: delete
                            ? "Deletar registro de funcionario"
                            : "Veja abaixo os funcionarios cadastrados no sistema"),
                    ...data.map((confia) {
                      return ListTile(
                        onTap: delete
                            ? () async {
                                try {
                                  print(confia.codFuncionario);
                                  await FuncionariosRest
                                      .deleteFuncionario(confia.codFuncionario);
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      createSnackbar(
                                          titulo:
                                              "Funcionario deletado com sucesso"));
                                  Navigator.pop(context);
                                } catch (e, a) {
                                  print(e);
                                  print(a);
                                }
                              }
                            : null,
                        title: Text('Nome: ${confia.nome}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cpf: ${confia.cpf}'),
                            Text('Email: ${confia.email}'),
                          ],
                        ),
                      );
                    })
                  ],
                ),
              );
            },
            loading: () => const LoadingView(titulo: "Carregando..."),
            error: (error, stackTrace) =>
                const ErrorView(titulo: "Ocorreu um erro"),
          ),
    );
  }
}
