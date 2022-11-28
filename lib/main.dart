import 'package:flutter/material.dart';
import 'package:igiaka/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'e-giaka',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}