import 'package:enote/view/setting_chip.dart';
import 'package:flutter/material.dart';

import '../handle/language.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingScreen();
  }
}

class _SettingScreen extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
          title: Text(StringSource.getText(context, "setting")),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              child: Column(
            children: [
              SettingChip(
                  ImageIcon(AssetImage("assets/images/type.png"), size: 20),
                  StringSource.getText(context, "type")),
              SettingChip(
                  ImageIcon(AssetImage("assets/images/tag.png"), size: 20),
                  StringSource.getText(context, "tag")),
            ],
          )),
        ));
  }
}
