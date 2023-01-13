import 'package:flutter/material.dart';

class LannisterScreen extends StatelessWidget {
   
  const LannisterScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casa Lannister'),
        backgroundColor: Colors.red.shade900,
        foregroundColor: Colors.white54,
      ),
      body: const Center(
         child: Text('La Casa Lannister gobierna el Occidente desde su bastión de Roca Casterly. La actual señora de la Casa Lannister es Cersei Lannister. La Casa Lannister extiende su linaje hasta una figura legendaria dentro de la saga como es Lann el Astuto, quien arrebató el control de Roca Casterly a la Casa Casterly mediante artimañas. Los Lannister gobernarían con el título de «Reyes de la Roca» hasta la llegada de Aegon el Conquistador; tras ser derrotados en batalla, los Lannister se rindieron y se les permitió conservar el señorío de la Roca, ostentando el título de «Guardianes del Occidente».'),
      ),
    );
  }
}