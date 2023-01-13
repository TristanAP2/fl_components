import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView.separated(
        //context: almacena la informacion de la aplicacion de los elementos padre 
        itemBuilder: ((context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: (() {
            //con el push sale la opcion de arriba a la izquierda retroceder
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
            //con el pushRecplacement no sale la opcion de retroceder, Util en logins
            //Navigator.pushReplacement(context, route);
          }),
        )),
         separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRoutes.MenuOptions.length) , 
    );
  }
}