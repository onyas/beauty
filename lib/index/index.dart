import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beauty/category/category.dart';
import 'package:beauty/home/home.dart';
import 'package:beauty/my/my.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text("首页")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text("分类")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text("我的")),
  ];

  final List pages = [HomePage(), CategoryPage(), MyPage()];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = pages[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
