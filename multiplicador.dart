import 'package:flutter/material.dart';

class Multiplicador extends StatefulWidget {
  const Multiplicador({super.key});

  @override
  State<Multiplicador> createState() => _Multiplicador();
}

class _Multiplicador extends State<Multiplicador> {
  int _num1 = 1;
  int _num2 = 1;
  int _result = 1;

  void _calculateResult() {
    setState(() {
      _result = _num1 * _num2;
    });
  }

  void _incrementNum1() {
    setState(() {
      _num1++;
    });
    _calculateResult();
  }

  void _decrementNum1() {
    setState(() {
      _num1--;
    });
    _calculateResult();
  }

  void _incrementNum2() {
    setState(() {
      _num2++;
    });
    _calculateResult();
  }

  void _decrementNum2() {
    setState(() {
      _num2--;
    });
    _calculateResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplicaciones instantaneas'),
        backgroundColor: Color.fromARGB(255, 134, 6, 6),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: _decrementNum1,
                  icon: Icon(Icons.remove),
                ),
                Text(
                  '$_num1',
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  onPressed: _incrementNum1,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: _decrementNum2,
                  icon: Icon(Icons.remove),
                ),
                Text(
                  '$_num2',
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  onPressed: _incrementNum2,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              '$_result',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
