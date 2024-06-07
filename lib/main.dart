import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/pages/home_page.dart';
import 'package:second_app/pages/login_page.dart';
import 'package:second_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // home: const HomePage(),
      initialRoute: Routes.loginRoute,
      routes: {
        Routes.defaultRoute: (context) => const LoginPage(),
        Routes.homeRoute: (context) => const HomePage(),
        Routes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
