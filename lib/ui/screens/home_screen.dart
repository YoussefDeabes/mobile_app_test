import 'package:flutter/material.dart';

import '../../res/coolor.dart';
import '../../res/assets_path.dart';
import '../widget/home_widget.dart';
import '../widget/league_table_widget.dart';
import '../widget/mass_center_widget.dart';
import '../widget/statistics_widget.dart';
import '../widget/more_widget.dart';

class HomeScreen extends StatefulWidget {
  static const ROUTE_NAME = '/home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 4;
  }
  ///All widgets in the same build widget not separated in functions due to time and you may find 
  ///some duplicated widgets.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getBottomNavigation(),
      body: getBody(),
    );
  }

  void onBottomItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Color notSeletedColor() {
    return Coolor.NAV_NOT_SEL_COL;
  }

  Color selectedColor() {
    return Coolor.NAV_SEL_COL;
  }

  BottomNavigationBar getBottomNavigation() {
    return BottomNavigationBar(
      backgroundColor: Coolor.BLUE_APP,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: selectedColor(),
      unselectedItemColor: notSeletedColor(),
      currentIndex: _currentIndex,
      onTap: onBottomItemSelected,
      showSelectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: _currentIndex == 0
              ? Image.asset(AssPath.MORE_LOGO, color: selectedColor())
              : Image.asset(
                  AssPath.MORE_LOGO,
                  color: notSeletedColor(),
                ),
          title: Text("المزيد"),
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 1
              ? Image.asset(AssPath.CS_LOGO, color: selectedColor())
              : Image.asset(
                  AssPath.CS_LOGO,
                  color: notSeletedColor(),
                ),
          title: Text("احصائيات كاملة"),
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 2
              ? Image.asset(AssPath.MC_LOGO, color: selectedColor())
              : Image.asset(
                  AssPath.MC_LOGO,
                  color: notSeletedColor(),
                ),
          title: Text("المركز الاعلامي"),
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 3
              ? Image.asset(AssPath.LT_LOGO, color: selectedColor())
              : Image.asset(
                  AssPath.LT_LOGO,
                  color: notSeletedColor(),
                ),
          title: Text('جدول الدوري'),
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 4
              ? Image.asset(AssPath.HOME_LOGO, color: selectedColor())
              : Image.asset(
                  AssPath.HOME_LOGO,
                  color: notSeletedColor(),
                ),
          title: Text('الرئيسية'),
        ),
      ],
    );
  }

  Widget getBody() {
    switch (_currentIndex) {
      case 0:
        return MoreWidget();
      case 1:
        return StatisticsWidget();
      case 2:
        return MassCenterWidget();
      case 3:
        return LeagueTableWidget();
      case 4:
        return HomeWidget();
    }
    return HomeWidget();
  }
}
