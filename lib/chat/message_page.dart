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
          final item = messageData[index];
          return new Dismissible(
              key: new Key(item.avatar),
              onDismissed: (direction) {
                messageData.removeAt(index);
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("$item dismissed")));
              },
              background: new Container(
                color: Colors.red,
                padding:
                    new EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: new Text(
                  '删除',
                  textDirection: TextDirection.rtl,
                ),
              ),
              child: new MessageItem(messageData[index]));
        },
      ),
    );
  }
}
