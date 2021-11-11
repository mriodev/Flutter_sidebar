import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sidebar_menu/widget/button_widget.dart';
import 'package:sidebar_menu/widget/navigation_drawer.dart';
import 'package:sidebar_menu/widget/button_widget.dart';
//import 'package:sidebar_menu/page/';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        initialRoute: "/widget/navigation_drawer",
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        // endDrawer: NavigationDrawerWidget(),//drawer icon move to right side of ur app
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Builder(
          builder: (context) => Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: ButtonWidget(
              icon: Icons.open_in_new,
              text: 'Open Drawer',
              onClicked: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      );
}
