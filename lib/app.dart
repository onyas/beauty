import 'package:beauty/chat/message_page.dart';
import 'package:beauty/contact/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beauty/my/my.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(Icons.message), title: Text("聊天")),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("好友")),
    BottomNavigationBarItem(icon: Icon(Icons.person_pin), title: Text("我的")),
  ];

  final List pages = [MessagePage(), Contact(), MyPage()];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = pages[currentIndex];
    super.initState();
  }

  _popupMenuItems(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
              ? Image.asset(imagePath, width: 32.0, height: 32.0)
              : SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beauty"),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "search");
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0),
                    items: <PopupMenuEntry>[
                      _popupMenuItems("发超会话", icon: Icons.message),
                      _popupMenuItems("添加好友", icon: Icons.person_add),
                      _popupMenuItems("联系客服", icon: Icons.person)
                    ]);
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = pages[index];
          });
        },
      ),
    );
  }
}
