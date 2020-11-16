import 'package:flutter/material.dart';

class AppBarAccountDelegate extends SliverPersistentHeaderDelegate {
  final double topPadding;

  AppBarAccountDelegate(this.topPadding);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Container(
        height: kToolbarHeight + topPadding,
        padding: EdgeInsets.only(top: topPadding),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if (Navigator.of(context).canPop())
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: BackButton(),
                  ),
                )
              else
                Expanded(
                  child: Container(),
                ),
              Expanded(
                child: Text(
                  'Bug Example',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IconButton(
                    splashRadius: 20,
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                    tooltip: 'settings',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      elevation: 0,
    );
  }

  @override
  double get maxExtent => kToolbarHeight + topPadding;

  @override
  double get minExtent => kToolbarHeight + topPadding;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
