import 'package:flutter/material.dart';

class QuadraticEquationSolver extends StatefulWidget {
  @override
  _QuadraticEquationSolverState createState() =>
      _QuadraticEquationSolverState();
}

class _QuadraticEquationSolverState extends State<QuadraticEquationSolver> {
  TextEditingController _controllerA = TextEditingController();
  TextEditingController _controllerB = TextEditingController();
  TextEditingController _controllerC = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giải Phương Trình Bậc Hai'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controllerA,
              decoration: InputDecoration(labelText: 'Nhập hệ số a'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _controllerB,
              decoration: InputDecoration(labelText: 'Nhập hệ số b'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _controllerC,
              decoration: InputDecoration(labelText: 'Nhập hệ số c'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _solveQuadraticEquation();
              },
              child: Text('Giải'),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  void _solveQuadraticEquation() {
    double a = double.tryParse(_controllerA.text) ?? 0;
    double b = double.tryParse(_controllerB.text) ?? 0;
    double c = double.tryParse(_controllerC.text) ?? 0;

    double delta = b * b - 4 * a * c;

    if (a == 0) {
      setState(() {
        _result = 'Đây không phải là phương trình bậc hai';
      });
    } else if (delta < 0) {
      setState(() {
        _result = 'Phương trình vô nghiệm';
      });
    } else if (delta == 0) {
      double x = -b / (2 * a);
      setState(() {
        _result = 'Phương trình có nghiệm kép: x = $x';
      });
    } else {
      double x1 = (-b + delta.sqrt()) / (2 * a);
      double x2 = (-b - delta.sqrt()) / (2 * a);
      setState(() {
        _result = 'Nghiệm của phương trình là: x1 = $x1, x2 = $x2';
      });
    }
  }
}
