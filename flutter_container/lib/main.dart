import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Container Example"),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(35),
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 210, 13, 36), width: 1),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    color: Color.fromARGB(255, 104, 234, 44),
                    offset: Offset(6.0, 6.0))
              ]),
          transform: Matrix4.rotationZ(0.1),
          child: const Text(
            "Hello! I am in the container widget decoration box!!",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
