import 'package:flutter/material.dart';

const String _name = "Dipu";

class ChatMessage extends StatelessWidget {
  final String text;
  const ChatMessage(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name,style: Theme.of(context).textTheme.bodyMedium,),
             Container(
               margin: EdgeInsets.only(top: 5),
               child: Text(text),
             )
            ],
          )
        ],
      ),
    );
  }
}
