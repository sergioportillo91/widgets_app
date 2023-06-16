import 'package:flutter/material.dart';

final List<Color> colors = [
  Colors.red,
  Colors.green,
  Colors.pink,
  Colors.purple,
  Colors.blueAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'El color debe ser mayor que 0'),
        assert(selectedColor < colors.length,
            'El color debe ser menor o igual a ${colors.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colors[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
