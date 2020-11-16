import 'package:flutter/material.dart';

class TabViewList extends StatefulWidget {
  final int children;
  TabViewList({
    Key key,
    @required this.children,
  }) : super(key: key);

  @override
  _TabViewListState createState() => _TabViewListState();
}

class _TabViewListState extends State<TabViewList>
    with AutomaticKeepAliveClientMixin<TabViewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          height: 100,
          width: double.infinity,
          color: Colors.blueAccent,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              index.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        itemCount: widget.children,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
