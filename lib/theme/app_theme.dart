import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.purple;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        primaryColor: primary,

        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        ),

        listTileTheme: const ListTileThemeData(
          iconColor: primary, 
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary),
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 10,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 10,
            ),
        ),

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          //Habilitado
          enabledBorder: OutlineInputBorder(
            //borderSide: BorderSide(color: primary),
            //borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          //Foco
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          //Generico
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
  );
}