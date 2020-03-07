import 'package:flutter/material.dart';

import '../../res/coolor.dart';
import '../../res/assets_path.dart';

class MoreWidget extends StatefulWidget {
  @override
  _MoreWidgetState createState() => _MoreWidgetState();
}

class _MoreWidgetState extends State<MoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolor.BLUE_APP,
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 65,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                      left: 15,
                    ),
                    child: Image.asset(AssPath.LOGO_TRANSPARENT),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text('دلـيل الـنوادي',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                  FlatButton(
                      onPressed: () {},
                      child: Text('دلـيل الملاعب',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                  FlatButton(
                      onPressed: () {},
                      child: Text('من نحن',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                  FlatButton(
                      onPressed: () {},
                      child: Text('الأنـظمة واللوائح ',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                  FlatButton(
                      onPressed: () {},
                      child: Text('الـلجان',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                  FlatButton(
                      onPressed: () {},
                      child: Text('اتصل بنا',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                  FlatButton(
                      onPressed: () {},
                      child: Text('شارك التطبيق',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                  FlatButton(
                      onPressed: () {},
                      child: Text('الاشـتراك بالنشرة الاخبارية',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Coolor.WHITE, fontSize: 25))),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Image.asset(AssPath.FACEBOOK_ICON),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 20),
                    child: Image.asset(AssPath.TWITTER_ICON),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 20),
                    child: Image.asset(AssPath.INSTAGRAM_ICON),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 20),
                    child: Image.asset(AssPath.LINKEDIN_ICON),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 20),
                    child: Image.asset(AssPath.YOUTUBE_ICON),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
