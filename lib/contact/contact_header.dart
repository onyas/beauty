import 'package:beauty/contact/contact_item.dart';
import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  const ContactHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactItem(
          titleName: "添加好友",
          imageName: "images/add_friend.png",
        ),
        ContactItem(
          titleName: "公开群组",
          imageName: "images/group_chat.png",
        )
      ],
    );
  }
}
