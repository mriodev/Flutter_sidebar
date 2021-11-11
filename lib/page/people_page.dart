import 'package:flutter/material.dart';
import 'package:sidebar_menu/widget/navigation_drawer.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        // drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('People'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      );
}
