import 'package:flutter/material.dart';
import 'package:mobile_app_test/res/assets_path.dart';
import 'package:mobile_app_test/res/coolor.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  ///All widgets in the same build widget not separated in functions due to time and you may find 
  ///some duplicated widgets.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 120,
              floating: false,
              pinned: true,
              backgroundColor: Coolor.BLUE_APP,
              primary: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    AssPath.APPBAR_IMG,
                    fit: BoxFit.fitWidth,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'المزيد',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Text(
                      'آخر الاخبار',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Coolor.BLUE_APP,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
                child: Stack(
                  children: <Widget>[
                    ClipRect(
                      child: Image.asset(
                        AssPath.STADIUM_IMG2x,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        AssPath.APP_LOGO,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28, left: 28),
                child: Text(
                  'الدوري الرياضي',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Coolor.GREY,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  ' ..من ملاعب السعودية الى منصة التتويج بكأس العالم',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Coolor.BLUE_APP,
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'المزيد',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Text(
                      'المباريات القادمة',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Coolor.BLUE_APP,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 160,
                child: Card(
                  elevation: 0,
                  child: ListView.separated(
                    padding: EdgeInsets.all(0),
                    primary: false,
                    shrinkWrap: true,
                    separatorBuilder: (_, __) {
                      return Container(
                        color: Colors.grey,
                        width: double.infinity,
                        height: 0.2,
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (ctx, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset(AssPath.CLUB_LOGO),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'الاهلي',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('22:00', style: TextStyle(fontSize: 18)),
                                Text(
                                  'الخميس 15 يوليو',
                                  style: TextStyle(color: Coolor.GREY),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'الاهلي',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Image.asset(AssPath.CLUB_LOGO),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'المزيد',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Text(
                      'آخر التغريدات',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Coolor.BLUE_APP,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 350,
                child: Card(
                  elevation: 0,
                  child: ListView.separated(
                    separatorBuilder: (_, __) {
                      return Container(
                        color: Colors.blueGrey,
                        width: double.infinity,
                        height: 0.1,
                      );
                    },
                    itemCount: 2,
                    padding: EdgeInsets.all(0),
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => Column(
                      children: <Widget>[
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Text(
                                    'الدوري  الرياضي',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Text(
                                  '@account',
                                  style: TextStyle(color: Coolor.GREY),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            Image.asset(AssPath.LOGO_TRANSPARENT),
                          ],
                        ),
                        Text(
                          'عندما يريد العالم أن يتكلّم، فهو يتحدّث بلغة يونيكود. تسجل الآن لحضور المؤتمر الدولي العاشر ليونيكود(Unicode Conference)الذي سيعقد في 12-10 آذار 1997 بمدينة ماينّتّس، المانيا ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  'توقع من هو الفائز',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Coolor.BLUE_APP,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 200,
                padding: EdgeInsets.all(0),
                child: Card(
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (ctx, index) => Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 115,
                          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: index == 0
                                    ? Coolor.GREY_20
                                    : index == 1
                                        ? Coolor.GREY_50
                                        : Coolor.GREY_30,
                              ),
                            ),
                            child: Image.asset(
                              AssPath.CLUB_LOGO2x,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  index == 0
                                      ? "النهضة"
                                      : index == 1 ? "الهلال" : 'الاتحاد',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  index == 0
                                      ? "20%"
                                      : index == 1 ? "50%" : '30%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: index == 0
                                          ? Coolor.GREY_20
                                          : index == 1
                                              ? Coolor.GREY_50
                                              : Coolor.GREY_30),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(
                  'الفيديوهات',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Coolor.BLUE_APP,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 280,
                child: Card(
                  child: Image.asset(AssPath.VIDEO_IMG),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(
                  'الرعاة',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Coolor.BLUE_APP,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 150,
                padding: EdgeInsets.all(0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(AssPath.SPONSOR),
                      Image.asset(AssPath.SPONSOR),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
