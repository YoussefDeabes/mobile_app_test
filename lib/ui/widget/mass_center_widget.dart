import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../res/coolor.dart';
import '../../res/assets_path.dart';
import '../widget/custom_appBar.dart';

class MassCenterWidget extends StatefulWidget {
  @override
  _MassCenterWidgetState createState() => _MassCenterWidgetState();
}

class _MassCenterWidgetState extends State<MassCenterWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Image.asset(AssPath.APPBAR_IMG2x),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                TabBar(
                  isScrollable: true,
                  indicatorColor: Coolor.WHITE,
                  tabs: [
                    Tab(text: "الفيديوهات"),
                    Tab(text: "الصور"),
                    Tab(text: "الأخبار"),
                  ],
                ),
              ),
            ),
          ),

          // title: Image.asset(AssPath.APPBAR_IMG),
        ),
        body: Center(
          child: Text("Sample text"),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
