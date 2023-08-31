import 'package:flutter/material.dart';


const Color _customColor = Color(0xFF248AFD);
const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.deepPurple,
  Colors.lightGreen,
  Colors.pinkAccent,
  Colors.lightBlueAccent,
  Colors.yellowAccent,
  Colors.deepOrangeAccent,
];

class AppTheme
{

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  })
    :assert(
      selectedColor >= 0 && selectedColor < _colorThemes.length,  
        'Color must be between 0 and ${(_colorThemes.length-1)}'
    );

  ThemeData theme()
  {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }

}