import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola juan carlos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Center(
            child: Column(
          children: [Text("hola"), Text("hola")],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
      ),
    );
  }
}
