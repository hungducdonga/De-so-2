import 'package:flutter/material.dart';
import 'package:kiemtra/quadratic_equation_solver.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giai phuong trinh bac 2',
      home: QuadraticEquationSolver(),
    );
  }
}
