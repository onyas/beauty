import 'package:flutter/material.dart';
import 'package:beauty/index/index.dart';

void main() => runApp(BeautyApp());

class BeautyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Beauty',
        home: IndexPage(),
        theme: ThemeData(primaryColor: Colors.pink),
      ),
    );
  }
}
