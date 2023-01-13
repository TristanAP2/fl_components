import 'package:flutter/material.dart';

class StarkScreen extends StatelessWidget {
   
  const StarkScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casa Stark'),
        backgroundColor: Colors.amber,
      ),

      body: const Center(
         child: Text('La Casa Stark gobierna el Norte, el mayor de los Siete Reinos, desde su fortaleza de Invernalia. El señor de la Casa Stark durante los hechos actuales de la saga es discutido; por una parte lo es Bran Stark, el varón vivo de más edad de los Stark; por otro lado Sansa Stark sería la señora de Invernalia, quedando de lado Arya Stark.'),
      ),
    );
  }
}