import 'package:flutter/material.dart';

import '../handle/language.dart';

class AppHeaderSeccond extends StatelessWidget {
  double padding = 15;
  String title;
  Widget? widget;
  Widget? rightAcction;

  AppHeaderSeccond(this.title, this.widget, this.rightAcction);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12,
        padding: EdgeInsets.only(top: 20, bottom: 0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_outlined),
                  padding: EdgeInsets.all(padding),
                  color: Colors.black,
                ),
                Expanded(
                    child: Text(
                  title,
                  style: TextStyle(fontSize: 20),
                )),
                Container(child: rightAcction != null ? rightAcction : null,)
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: widget != null
                      ? widget
                      : Container(
                          padding: EdgeInsets.all(5),
                          // color: Colors.deepOrange,
                        ),
                ))
              ],
            )
          ],
        ));
  }
}
