import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme() => ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
       fontFamily: GoogleFonts.lato().fontFamily,
       appBarTheme: AppBarTheme(
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
        
        brightness: Brightness.dark,
       
        );
}