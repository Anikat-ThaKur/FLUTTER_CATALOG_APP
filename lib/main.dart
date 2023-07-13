import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
       fontFamily: GoogleFonts.lato().fontFamily,
        ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),

      },

    );
  }
}