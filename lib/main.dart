import 'package:flutter/material.dart';
import 'ui/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'res/coolor.dart';
import 'ui/screens/centerM_details_screen.dart';
import 'apis/test_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: TestApi(),
        ),
        
      ],
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Coolor.PRIMARYSWATCH,
        ),
        home: HomeScreen(),
        routes: {
              CenterMDetailsScreen.ROUTE_NAME: (ctx) => CenterMDetailsScreen(),
            },
      ),
    );
  }
}
