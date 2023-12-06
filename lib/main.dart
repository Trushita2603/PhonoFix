import 'package:flutter/material.dart';
import 'package:phonofix_app/auth/intro.dart';
import 'package:phonofix_app/auth/login.dart';
import 'package:phonofix_app/dashpage.dart';
import 'package:phonofix_app/home/home.dart';
import 'package:phonofix_app/utils/colors.dart';
import 'package:phonofix_app/utils/routes.dart';

void main(List<String> args) {
  runApp(const Phonofix());
}

class Phonofix extends StatelessWidget {
  const Phonofix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsValue().primary,
        appBarTheme: AppBarTheme(
          color: ColorsValue().primary,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => IntroPage(),
        PhonofixRoutes().loginRoute: (context) => LoginPage(),
        PhonofixRoutes().homeRoute: (context) => HomePage(),
      },
    );
  }
}
