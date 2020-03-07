import 'package:flutter/material.dart';

import '../../res/coolor.dart';
import '../../res/assets_path.dart';
import '../screens/centerM_details_screen.dart';

class MassCenterWidget extends StatefulWidget {
  @override
  _MassCenterWidgetState createState() => _MassCenterWidgetState();
}

class _MassCenterWidgetState extends State<MassCenterWidget> {
  List<String> _photos = [
    AssPath.IMG2,
    AssPath.STADIUM_IMG,
    AssPath.IMG3,
    AssPath.IMG2,
    AssPath.STADIUM_IMG,
    AssPath.IMG3,
    AssPath.IMG2,
    AssPath.STADIUM_IMG,
    AssPath.IMG3,
    AssPath.IMG2,
    AssPath.STADIUM_IMG,
    AssPath.IMG3,
    AssPath.IMG2,
    AssPath.STADIUM_IMG,
    AssPath.IMG3,
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Image.asset(AssPath.APPBAR_IMG2x, fit: BoxFit.cover),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              width: double.infinity,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Coolor.WHITE,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Container(width: 100, child: Tab(text: "الفيديوهات")),
                  Container(width: 120, child: Tab(text: "الصور")),
                  Container(width: 100, child: Tab(text: "الأخبار")),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Page1(),
            // Page2(),
            Center(child: Text('الفيديوهات')),
            Center(child: Text('الصور')),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (ctx, index) => InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(CenterMDetailsScreen.ROUTE_NAME,arguments: _photos[index]);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'الدوري الرياضي',
                              style:
                                  TextStyle(color: Coolor.GREY, fontSize: 18),
                              textDirection: TextDirection.rtl,
                            ),
                            Container(
                              width: 200,
                              child: Text(
                                'من الملاعب السعودية الى منصة التتويج بكأس العالم..',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            Text(
                              '12 يوليو2018 ',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Coolor.GREY),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Stack(
                          children: <Widget>[
                            Container(
                                width: 130,
                                height: 100,
                                child: Image.asset(
                                  _photos[index],
                                  fit: BoxFit.cover,
                                )),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 30,
                                child: Image.asset(
                                  AssPath.APP_LOGO,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SliverPersistentHeader(
//           delegate: _SliverAppBarDelegate(
//             TabBar(
//               isScrollable: true,
//               indicatorColor: Coolor.WHITE,
//               tabs: [
//                 Tab(text: "الفيديوهات"),
//                 Tab(text: "الصور"),
//                 Tab(text: "الأخبار"),
//               ],
//             ),
//           ),
//           pinned: true,
//         ),

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
