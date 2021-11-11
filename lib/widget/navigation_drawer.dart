import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebar_menu/page/favourite_page.dart';
import 'package:sidebar_menu/page/people_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'search',
              icon: Icons.search,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'people',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Favourite',
              icon: Icons.favorite_border,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Workflow',
              icon: Icons.workspaces_outline,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Updates',
              icon: Icons.update,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 24),
            const Divider(
              color: Colors.white70,
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'plugin',
              icon: Icons.account_tree_outlined,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Notification',
              icon: Icons.notification_add_outlined,
              onClicked: () => selectedItem(context, 5),
            ),
          ],
        ),
      ),
    );
  }
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PeoplePage(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FavouritePage(),
      ));

      break;
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final Color = Colors.white;
  final hoverColor = Colors.white60;

  return ListTile(
    leading: Icon(
      icon,
      color: Color,
    ),
    title: Text(
      text,
      style: TextStyle(color: Color),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
