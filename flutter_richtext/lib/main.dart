import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyTextPage(),
    );
  }
}

class MyTextPage extends StatelessWidget {
  const MyTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text Widget Example'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Don\'t have an account?',
            style: const TextStyle(color: Colors.black, fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                  text: 'Sign up',
                  style:
                      const TextStyle(color: Colors.blueAccent, fontSize: 15),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
            ],
          ),
        ),
      ),
    );
  }
}
