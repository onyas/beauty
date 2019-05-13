import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();

    new Future.delayed(Duration(seconds: 3), () {
      print("loading page...");

      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Stack(
        children: <Widget>[
          Image.asset("images/loading.jpeg", fit: BoxFit.fill)
        ],
      ),
    );
  }
}
