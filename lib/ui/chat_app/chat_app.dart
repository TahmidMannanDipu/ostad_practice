import 'package:flutter/material.dart';

import 'chat_screen.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:const  Text(
          "Random chat",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 100,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ChatScreen(),
    );
  }
}
