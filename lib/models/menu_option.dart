import 'package:flutter/material.dart';

class MenuOption {
  //ruta a la que queremos ir
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption(
    {required this.route,
    required this.icon,
    required this.name,
    required this.screen});
}
