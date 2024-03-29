import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter TextField"),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "User Name",
                      hintText: 'Enter Your Name'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter Your Password'),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Sign In'))
            ],
          ),
        ),
      ),
    );
  }
}
