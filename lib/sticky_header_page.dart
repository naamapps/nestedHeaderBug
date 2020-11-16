import 'package:flutter/material.dart';
import 'package:test_project/tab_bar_sliver_persistent_header_delegate.dart';
import 'package:test_project/header.dart';
import 'package:test_project/tab_view.dart';

class StickyHeaderPage extends StatelessWidget {
  const StickyHeaderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverPersistentHeader(
                pinned: true,
                delegate: AppBarAccountDelegate(
                  MediaQuery.of(context).padding.top,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 300,
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      'Placeholder',
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: TabBarSliverPersistentHeaderDelegate(
                  child: Container(
                    height: 48,
                    child: TabBar(
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.bookmark_border,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TabViewList(children: 20),
              TabViewList(children: 5),
            ],
          ),
        ),
      ),
    );
  }
}
