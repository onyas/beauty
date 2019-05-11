import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'app.dart';
import 'search.dart';
import 'loading.dart';

void main() => runApp(BeautyApp());

class BeautyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Beauty',
        home: new LoadingPage(),
        theme: ThemeData(primaryColor: Colors.pink),
        routes: <String, WidgetBuilder>{
          "app": (BuildContext context) => new App(),
          "search": (BuildContext context) => new Search(),
          "/friends": (_) => new WebviewScaffold(
              url: "https://github.com/onyas",
              appBar: new AppBar(
                title: const Text("作者"),
              ),
              withZoom: true,
              withLocalStorage: true)
        },
      ),
    );
  }
}
