import 'package:flutter/material.dart';

class QuadraticEquation {
  static String solve(double a, double b, double c) {
    double delta = b * b - 4 * a * c;

    if (a == 0) {
      return 'Đây không phải là phương trình bậc hai';
    } else if (delta < 0) {
      return 'Phương trình vô nghiệm';
    } else if (delta == 0) {
      double x = -b / (2 * a);
      return 'Phương trình có nghiệm kép: x = $x';
    } else {
      double x1 = (-b + delta.sqrt()) / (2 * a);
      double x2 = (-b - delta.sqrt()) / (2 * a);
      return 'Nghiệm của phương trình là: x1 = $x1, x2 = $x2';
    }
  }
}
