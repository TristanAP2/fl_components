import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
        //nos devuelve cada uno de lis item que le pasamos
        itemBuilder: ((context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptionsHouses[index].icon),
          title: Text(AppRoutes.MenuOptionsHouses[index].name),
          onTap: (() {
            //con el push sale la opcion de arriba a la izquierda retroceder
            Navigator.pushNamed(context, AppRoutes.MenuOptionsHouses[index].route);
            //con el pushRecplacement no sale la opcion de retroceder, Util en logins
            //Navigator.pushReplacement(context, route);
          }),
        )),
        //Para saber cuantos elementos tiene la lista
        separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRoutes.MenuOptionsHouses.length) ,  
      );
  }
}