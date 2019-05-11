import 'package:beauty/contact/contact_vo.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final ContactVO item;
  final String titleName;
  final String imageName;

  const ContactItem({Key key, this.item, this.titleName, this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9d)))),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            imageName == null
                ? Image.network(
                    item.avatarUrl != ''
                        ? item.avatarUrl
                        : "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=644481890,528432248&fm=26&gp=0.jpg",
                    width: 36.0,
                    height: 36.0,
                  )
                : Image.asset(
                    imageName,
                    width: 36.0,
                    height: 36.0,
                  ),
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                titleName == null ? item.name : titleName,
                style: TextStyle(fontSize: 18.0, color: Color(0xff353535)),
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
