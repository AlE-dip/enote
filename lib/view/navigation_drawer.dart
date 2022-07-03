import 'package:enote/view/remember_screen.dart';
import 'package:enote/view/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../handle/language.dart';

class NavigationDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      children: [
        Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  StringSource.getText(context, "option"),
                  style: textTheme.headlineMedium,
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("assets/images/add.png"),
                  size: 24,
                ),
                title: Text(StringSource.getText(context, "add")),
                onTap: () => {
                  Navigator.pop(context),
                },
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("assets/images/console.png"),
                  size: 24,
                ),
                title: Text(StringSource.getText(context, "game")),
                onTap: () => {
                  Navigator.pop(context),
                },
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("assets/images/import.png"),
                  size: 24,
                ),
                title: Text(StringSource.getText(context, "import")),
                onTap: () => {
                  Navigator.pop(context),
                },
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("assets/images/export.png"),
                  size: 24,
                ),
                title: Text(StringSource.getText(context, "export")),
                onTap: () => {
                  Navigator.pop(context),
                },
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("assets/images/forget.png"),
                  size: 24,
                ),
                title: Text(StringSource.getText(context, "remember")),
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RememberScreen()))
                },
              ),
              ListTile(
                leading: ImageIcon(
                  AssetImage("assets/images/more.png"),
                  size: 24,
                ),
                title: Text(StringSource.getText(context, "more")),
                onTap: () => {
                  Navigator.pop(context),
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()))
                },
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
      ],
    );
  }
}