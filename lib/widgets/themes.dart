import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{

  static ThemeData lightTheme() => ThemeData(

       primarySwatch: Colors.deepPurple,
       fontFamily: GoogleFonts.poppins().fontFamily,
       cardColor: Colors.white,
       canvasColor: creamColor,
       colorScheme: ColorScheme.fromSwatch().copyWith(
        primary:  darkBluishColor,
        secondary: darkBluishColor),

       appBarTheme: const AppBarTheme(
        color: Colors.white,
        //for removing the shadow
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black
          
          ),
        

       )
        );

        static ThemeData darkTheme() => ThemeData(
            
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary:  Colors.white,
          secondary: lightBluishColor,
          brightness: Brightness.dark,
          ),
        appBarTheme: const AppBarTheme(
        color: Colors.black,
        //for removing the shadow
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white),
       
       
         ));
        static Color creamColor = const Color(0xfff5f5f5);
        static Color darkCreamColor = Vx.gray800;
        static Color darkBluishColor =const Color(0xff403b58);
        static Color lightBluishColor = Vx.indigo500;
}