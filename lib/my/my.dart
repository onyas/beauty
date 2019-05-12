import 'package:beauty/common/im_item.dart';
import 'package:beauty/common/touch_callback.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.network(
                        "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2149989537,3422851914&fm=26&gp=0.jpg",
                        width: 70.0,
                        height: 70.0),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "小新",
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff353535)),
                        ),
                        Text(
                          "账号: github/onyas",
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xff9a9a9a)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset("images/qr_code.png",
                        width: 24.0, height: 24.0),
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: "动态",
              imagePath: "images/friends.png",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  title: "收藏",
                  imagePath: "images/collect.png",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: "相册",
                  imagePath: "images/album.png",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  title: "表情",
                  imagePath: "images/emoji.png",
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: "设置",
              imagePath: "images/setting.png",
            ),
          )
        ],
      ),
    );
  }
}
