import 'package:flutter/material.dart';

class TabBarSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  Widget child;

  TabBarSliverPersistentHeaderDelegate({this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      child: child,
      color: Theme.of(context).cardColor,
      elevation: overlapsContent ? 4 : 0,
    );
  }

  @override
  double get maxExtent => 48.0;

  @override
  double get minExtent => 48.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
