import 'package:flutter/material.dart';

// ¹²³⁴⁵⁶⁷⁸⁹⁰
Map<String, List> colorCode = {
  'Black': ['0', '0', '10⁰', '', Colors.black],
  'Brown': ['1', '1', '10¹', '1', Colors.brown],
  'Red': ['2', '2', '10²', '2', Colors.red],
  'Orange': ['3', '3', '10³', '3', Colors.orange],
  'Yellow': ['4', '4', '10⁴', '4', Colors.yellow],
  'Green': ['5', '5', '10⁵', '0.5', Colors.green],
  'Blue': ['6', '6', '10⁶', '0.25', Colors.blue],
  'Voilet': ['7', '7', '10⁷', '0.10', Colors.purple],
  'Grey': ['8', '8', '10⁸', '0.05', Color.fromARGB(228, 138, 138, 138)],
  'White': ['9', '9', '10⁹', '', Colors.white],
  'Gold': ['', '', '10⁻¹', '5', Color.fromARGB(255, 202, 189, 0)],
  'Silver': ['', '', '10⁻²', '10', Color.fromARGB(255, 179, 179, 179)],
};

// Color White = Colors.white;
Color? resistorColor = Color.fromARGB(255, 180, 117, 23);
Color? optionColor = Color.fromARGB(255, 59, 255, 147);

// Color digit1_color = White;
// Color digit2 = White;
// Color multiplier = White;
// Color tolerance = White;
List factorsColors = [
  resistorColor,
  resistorColor,
  resistorColor,
  resistorColor
];
