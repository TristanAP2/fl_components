import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

///////////////IMPORTANTE ESTATEFULLWIDGET

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  //para que modifique la poscion del slider
  double _sliderValue = 100;
  //Para el checkbos
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliders & Checks'),),
      body: Column(
        children: [
          //Para que se adapte a los dos SO Android, IOS
          Slider.adaptive(
            activeColor: AppTheme.primary,
            //tamano del slider
            value: _sliderValue,
            min: 50,
            max: 400,
            onChanged: _sliderEnabled ? (value) {
              _sliderValue = value;
              //redibujar la pantalla
              setState(() {
              });
            } : null
          ),
          Checkbox(
            value: _sliderEnabled, 
            onChanged:(value) {
              _sliderEnabled = value ?? true;
              setState(() {
                
              });
            },
            ),
        ],
      )
    );
  }
}