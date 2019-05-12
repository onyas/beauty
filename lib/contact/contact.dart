import 'package:beauty/contact/contact_header.dart';
import 'package:beauty/contact/contact_item.dart';
import 'package:beauty/contact/contact_sider_list.dart';
import 'package:beauty/contact/contact_vo.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  Contact({Key key}) : super(key: key);

  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        items: contactData,
        headerBuilder: (BuildContext context, int index) {
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(
              item: contactData[index],
            ),
          );
        },
        sectionBuilder: (BuildContext context, int indext) {
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left: 14.0),
            color: Colors.grey,
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[indext].sectionKey,
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
