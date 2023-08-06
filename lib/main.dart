import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/cart_page.dart';
import 'package:flutter_projects/widgets/themes.dart';
import 'pages/homepage.dart';
import 'pages/login_page.dart';
import 'package:flutter_projects/utils/routes.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(),
      darkTheme: MyTheme.darkTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),

      },

    );
  }
}