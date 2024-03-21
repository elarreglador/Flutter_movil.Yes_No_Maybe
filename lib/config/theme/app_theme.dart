import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.lime,
  Colors.orange,
  Colors.pink,
];

//TEMAS DE COLOR DE NUESTRA APLICACION
class AppTheme {
  final int selectedColor;

  // CONSTRUCTOR
  // los asserts son un tipo de gestion de errores
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colores deben estar entre 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
