import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyTextPage(),
    );
  }
}

class MyTextPage extends StatelessWidget {
  const MyTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Text Widget Example'),
      ),
      body: const Center(
        child: Text(
          "Hello Wolrd! This is a Text Widget.",
          style: TextStyle(
              fontSize: 35,
              //color: Colors.purple,
              color: Colors.red,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              letterSpacing: 8,
              wordSpacing: 20,
              backgroundColor: Colors.yellow),
        ),
      ),
    );
  }
}
