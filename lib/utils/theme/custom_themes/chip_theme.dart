import 'package:flutter/material.dart';

class CustomChipTheme {
  CustomChipTheme._();
  //light chip theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    checkmarkColor: Colors.white,
  );
  //dark chip theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    checkmarkColor: Colors.white,
  );
}
