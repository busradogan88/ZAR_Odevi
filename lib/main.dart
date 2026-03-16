import 'package:flutter/material.dart';
import 'package:flutter_application_1/zar_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Zar_page()
    );
  }
}


