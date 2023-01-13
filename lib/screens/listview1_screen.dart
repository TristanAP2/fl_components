import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  final options = const['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
          .map(( casas ) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              title: Text( casas ),
          ))
          .toList(),
        ],
      )
    );
  }
}