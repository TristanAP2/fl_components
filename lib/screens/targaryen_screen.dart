import 'package:flutter/material.dart';

class targaryenScreen extends StatelessWidget {
   
  const targaryenScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casa Targaryen'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white54,
      ),
      body: const Center(
         child: Text('La Casa Targaryen es una Casa cuyo origen se remonta a Valyria y que conquistó la mayor parte de Poniente bajo Aegon el Conquistador, quien construiría el Trono de Hierro y sometió a los reyes de Poniente.Durante casi 280 años, los Targaryen gobernaron los Siete Reinos desde el Trono de Hierro. Manteniendo una larga dinastía, los Targaryen gozaron de reyes sabios, como Jaehaerys I el Conciliador o Daeron II el Bueno, reyes que con sus decisiones sembraron el caos y la guerra entre su propio pueblo, como Maegor I el Cruel o Aegon II el Indigno, o monarcas débiles que delegaron su gobierno en terceros como Aenys I o Aerys I.'),
      ),
    );
  }
}