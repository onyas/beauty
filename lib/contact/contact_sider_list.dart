import 'package:beauty/contact/contact_vo.dart';
import 'package:flutter/material.dart';

class ContactSiderList extends StatefulWidget {
  final List<ContactVO> items;
  final IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList(
      {Key key,
      @required this.items,
      @required this.headerBuilder,
      @required this.itemBuilder,
      @required this.sectionBuilder})
      : super(key: key);

  _ContactSiderListState createState() => _ContactSiderListState();
}

class _ContactSiderListState extends State<ContactSiderList> {
  final ScrollController _scrollController = new ScrollController();
  bool _noNotification(ScrollNotification notification) {
    return true;
  }

  _isShowHeaderView(index) {
    if (index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  bool _shouldShowHeader(int position) {
    if (position <= 0) {
      return false;
    }

    if (widget.items[position].sectionKey !=
        widget.items[position - 1].sectionKey) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener(
            onNotification: _noNotification,
            child: ListView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      _isShowHeaderView(index),
                      Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBuilder(context, index),
                      ),
                      Column(
                        children: <Widget>[widget.itemBuilder(context, index)],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
