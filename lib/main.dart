import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Text(
          'hello',
           textDirection: TextDirection.ltr,
           style: TextStyle(
             fontSize: 40,
             fontWeight: FontWeight.bold,
             color: Colors.yellow
           ),
      ),
    );
  }
}
