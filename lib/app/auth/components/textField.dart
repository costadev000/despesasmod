import 'package:flutter/material.dart';

Widget textField(
    {bool obscure, onChanged, String Function() errorText, String hint}) {
  return TextField(
    obscureText: obscure,
    onChanged: onChanged,
    style: TextStyle(fontSize: 20),
    decoration: InputDecoration(
      hintText: hint,
      errorText: errorText == null ? null : errorText(),
    ),
  );
}
