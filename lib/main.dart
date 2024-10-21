import 'package:flutter/material.dart';
import 'package:ostad_class_practice/ui/chat_app/chat_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practice UI",
      //theme: myThemeData(),
      home: ChatApp(),
    );
  }
}
