import 'package:flutter/material.dart';

class BaratheonScreen extends StatelessWidget {
   
  const BaratheonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casa Baratheon'),
        backgroundColor: Colors.yellow.shade400,
      ),

      body: const Center(
         child: Text('La Casa Baratheon es la actual poseedora del Trono de Hierro como Reyes de los Siete Reinos. Los Baratheon ostentan también el título de señores de Bastión de Tormentas. El actual señorío de la Casa Baratheon se haya discutido; por un lado está el joven Tommen Baratheon, Rey de los Siete Reinos e hijo ilegítimo de Jaime Lannister y Cersei Lannister; por otra parte está Stannis Baratheon, autoproclamado Rey y asentado en el Norte.'),
      ),
    );
  }
}