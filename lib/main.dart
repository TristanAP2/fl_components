import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      //quitar la etiqueta debug de arriba a la derecha
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //clase que se va a ejecutar
      //home: const ListView2Screen(),
      //es como el home de arriba pero usando las rutas
      initialRoute: AppRoutes.intialRoute,
      //definir las rutas de los archivos
      routes: AppRoutes.getAppRoutes(),
      //Por si hay algun fallo en una ruta generada
      onGenerateRoute: AppRoutes.onGenerateRoute,
      //personalizar el tema, copywith para poder sobreescribir 
      theme: AppTheme.lightTheme,
    );
  }
}