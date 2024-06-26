import 'package:flutter/material.dart';
import 'package:meus_quadrinhos/pages/detail_page.dart';
import 'package:meus_quadrinhos/pages/home_page.dart';
import 'package:meus_quadrinhos/pages/login_page.dart';
import 'package:meus_quadrinhos/utils/constants.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('comics_box');
  await Hive.openBox('issues');
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //disables the debug banner
      home: const HomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      routes: {
        LoginPage.routeName : (context) => const LoginPage(),
        HomePage.routeName : (context)=> const HomePage(),
        DetailPage.routeName: (context) {
          final Map<String, dynamic> args =
              ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          return DetailPage(item: args['item']);
        },
      });
  }
}