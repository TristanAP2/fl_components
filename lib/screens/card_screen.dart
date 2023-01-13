import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox( height: 10,),
          CustomCardTipo2( imageUrl: 'https://fotografias.antena3.com/clipping/cmsimages02/2022/03/30/6A9D3D9D-4B5D-481E-B406-366010737726/horario-donde-ver-sorteo-mundial-qatar-2022_98.jpg', name : 'Qatar'),
          
          SizedBox( height: 10,),
          CustomCardTipo2(imageUrl: 'https://www.telefonica.es/es/wp-content/uploads/sites/10/2022/07/5303-Soccer-ball-in-motion-over-grass.jpg'),
          
          SizedBox( height: 10,),
          CustomCardTipo2(imageUrl: 'https://okdiario.com/img/2019/08/10/origen-del-futbol.jpg', name: 'Football origin'),
          
          SizedBox( height: 10,),
          CustomCardTipo2(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/07/%D0%A4%D0%9A_%22%D0%9A%D0%BE%D0%BB%D0%BE%D1%81%22_%28%D0%97%D0%B0%D1%87%D0%B5%D0%BF%D0%B8%D0%BB%D0%BE%D0%B2%D0%BA%D0%B0%2C_%D0%A5%D0%B0%D1%80%D1%8C%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F_%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C%29_-_%D0%A4%D0%9A_%22%D0%91%D0%B0%D0%BB%D0%BA%D0%B0%D0%BD%D1%8B%22_%28%D0%97%D0%B0%D1%80%D1%8F%2C_%D0%9E%D0%B4%D0%B5%D1%81%D1%81%D0%BA%D0%B0%D1%8F_%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C%29_%2818790931100%29.jpg', name: 'Brasil',),
          
        ],
      ),
    );
  }
}

