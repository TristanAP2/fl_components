import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius =  BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated container'),),
      body: Center(
        child: Container(
           width: _width,
           height: _height,
           decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
           ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_fill, size: 35),
        onPressed: () { 
          List<Color> arr = [Colors.amber,Colors.teal,Colors.blue,Colors.deepOrange,Colors.pinkAccent];
          this._width = Random().nextDouble()*100 +50;
          this._height = Random().nextDouble()*100 +50;
          this._borderRadius = BorderRadius.circular(Random().nextDouble()*50);
          this._color = arr[Random().nextInt(5)];
          setState(() {});
        },
      ),
    );
  }
}