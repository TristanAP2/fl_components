
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextCapitalization textCapitalization;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
    this.textCapitalization = TextCapitalization.words, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Yoryi Ruizz',
      //Poner en mayuscula la primera letra de cada palabra
      textCapitalization: textCapitalization,
      //Para que salga en el teclado la @ para el email
      keyboardType: keyboardType,
      //para las contrasenas
      obscureText: obscureText,
      //GUARDA EL VALOR DEL INPUT
      onChanged: (value) => formValues[formProperty] = value,
      //Validaciones
      validator: (value) {
        if (value!.length < 3) {
          return 'Minimo 3 caracteres';
        }
        else if (value.length > 20) {
          return 'Maximo 8 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //Mostrar un mensaje con lo que tiene que escribir (Arriba)
        hintText: hintText,
        //Pequena etiqueta encima del form
        labelText: labelText,
        //Mensaje de ayuda para el usuario (Abajo)
        helperText: helperText,
        //Icono (Izquierda)
        //prefixIcon: Icon(Icons.verified_user),
        icon: Icon(icon),
        //Icono (Derecha)
        suffixIcon: Icon(suffixIcon), 
        //Borde
        /*border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),*/

      ),

    );
  }
}