import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Slider2Screen extends StatefulWidget {
   
  const Slider2Screen({Key? key}) : super(key: key);

  @override
  State<Slider2Screen> createState() => _Slider2ScreenState();
}

class _Slider2ScreenState extends State<Slider2Screen> {

  double _sliderValue = 200;
  bool _cbValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 0,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              //Si el checkbox esta habilitado se puede modificar, sino null
              onChanged: _cbValue ? (value) {
                _sliderValue = value;
                setState(() { });
              } : null
              
            ),
            CheckboxListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _cbValue, 
              onChanged:(value) {
                //Para que si tiene un valor nulo, por defecto se ponga en true
                _cbValue = value ?? true;
                setState(() {
                  
                });
              },
            ),
            SwitchListTile(
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              value: _cbValue, 
              onChanged:(value) {
                //Para que si tiene un valor nulo, por defecto se ponga en true
                _cbValue = value;
                setState(() {
                  
                });
              },
            ),
            Image(
              image: NetworkImage('https://static.wikia.nocookie.net/vsbattles/images/0/0d/Sandor_Clegane_%28GoT%29.png'),
              //Ajustamos las proporciones para que se adapte al valor del slider
              fit: BoxFit.contain,
              width: _sliderValue,
              
            )
          ],
        ),
      ),
    );
  }
}