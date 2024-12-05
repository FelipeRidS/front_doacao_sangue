import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:front_doacao_sangue/screens/menu/menu_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mongo_dart/mongo_dart.dart';

late final Dio dio;
late final Db db;
const baseUrl = "http://localhost:3000";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dio = Dio();
  dio.options.headers['Content-Type'] = 'application/json';
  try {
    db = await Db.create('mongodb+srv://admin:udesc@cluster0.5j2zf.mongodb.net/');
  } catch (e, s) {
    print(e);
    print(s);
  }

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MenuScreen(),
    );
  }
}
