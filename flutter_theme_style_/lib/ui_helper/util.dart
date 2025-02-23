import 'package:flutter/material.dart';

TextStyle mTextStyle11() {
  return TextStyle(fontSize: 11);
}

TextStyle mTextStyle22() {
  return TextStyle(fontSize: 22);
}

TextStyle mTextStyle33() {
  return TextStyle(fontSize: 33);
}

TextStyle myParameter(
    {Color color = Colors.black, FontWeight weight = FontWeight.normal}) {
  return TextStyle(fontWeight: weight, color: color);
}
