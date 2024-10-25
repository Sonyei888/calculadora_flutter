import 'package:flutter/material.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatefulWidget {
  const CalcApp({super.key});

  @override
  State<CalcApp> createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculadora",
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            
          ),
        ),
      ),
    );
  }
}