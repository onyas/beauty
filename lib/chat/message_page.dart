import 'package:beauty/chat/message_data.dart';
import 'package:beauty/chat/message_item.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key key}) : super(key: key);

  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          return new MessageItem(messageData[index]);
        },
      ),
    );
  }
}
