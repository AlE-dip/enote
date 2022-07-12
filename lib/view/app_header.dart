import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../handle/language.dart';
import 'edit_text.dart';
import 'handle_word_screen.dart';

class AppHeader extends StatefulWidget {
  late AppHeaderState appHeaderState;

  AppHeader(openNavigation) {
    appHeaderState = AppHeaderState(openNavigation);
  }

  @override
  State<StatefulWidget> createState() {
    return appHeaderState;
  }
}

class AppHeaderState extends State<AppHeader> {
  var openNavigation;

  AppHeaderState(this.openNavigation);

  final double padding = 15;
  bool isSearch = false;
  bool switchOn = false;
  int english = 0;
  int notify = 0;
  int bot = 0;
  int forget = 0;

  late EditText editText;

  EditText createEditText(String hint) {
    editText = EditText();
    editText.editTextState.hint = hint;
    editText.editTextState.iconRight = GestureDetector(
      child: Icon(Icons.search_sharp),
      onTap: () {
        setState(() => {
              isSearch = false,
            });
      },
    );
    // editText.editTextState.haveAnim = true;
    return editText;
  }

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
                    openNavigation();
                  },
                  icon: Icon(Icons.menu_outlined),
                  padding: EdgeInsets.all(padding),
                ),
                isSearch
                    ? Container(
                        child: Expanded(child: createEditText(
                          StringSource.getText(context, "search"),)),
                      )
                    : Expanded(
                        child: Text(
                        StringSource.getText(context, "app_bar_title"),
                          style: TextStyle(fontSize: 20),
                      )),
                isSearch
                    ? Container()
                    : IconButton(
                        icon: new Icon(Icons.search_sharp),
                        onPressed: () {
                          setState(() => {
                                isSearch = true,
                              });
                          // editText.editTextState.expandAnimation();
                        },
                  padding: EdgeInsets.only(left: 4),
                      ),
                IconButton(
                  icon: new Icon(Icons.g_translate_sharp),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HandleWordScreen()));
                  },
                  padding: EdgeInsets.only(left: padding, right: padding),
                ),
              ],
            ),
            Container(
              // margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                      child: Row(children: [
                        Text(
                          StringSource.getText(context, "english"),
                          style: english == 0
                              ? TextStyle(fontSize: 10)
                              : TextStyle(
                                  fontSize: 10, color: Colors.blueAccent),
                        ),
                        english == 1
                            ? Padding(
                                padding: EdgeInsets.only(left: 1, right: 1),
                                child: ImageIcon(
                                  AssetImage("assets/images/up.png"),
                                  size: 8,
                                  color: Colors.blueAccent,
                                ))
                            : english == 2
                                ? Padding(
                                    padding: EdgeInsets.only(left: 1, right: 1),
                                    child: ImageIcon(
                                      AssetImage("assets/images/down.png"),
                                      size: 8,
                                      color: Colors.blueAccent,
                                    ))
                                : Container()
                      ]),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(5)),
                      ),
                      margin: EdgeInsets.only(left: 1, right: 1, top: 30),
                      padding: EdgeInsets.all(1),
                    ),
                    onTap: () {
                      setState(() => {
                            english = english == 0
                                ? 1
                                : english == 1
                                    ? 2
                                    : 0,
                            notify = 0,
                            bot = 0,
                            forget = 0,
                          });
                    },
                  ),
                  GestureDetector(
                      child: Container(
                        child: Row(children: [
                          Text(
                            StringSource.getText(context, "notify"),
                            style: notify != 1
                                ? TextStyle(fontSize: 10)
                                : TextStyle(
                                    fontSize: 10, color: Colors.blueAccent),
                          ),
                          notify == 1
                              ? Padding(
                                  padding: EdgeInsets.only(left: 1, right: 1),
                                  child: ImageIcon(
                                    AssetImage("assets/images/dot.png"),
                                    size: 8,
                                    color: Colors.blueAccent,
                                  ))
                              : notify == 2
                                  ? Padding(
                                      padding:
                                          EdgeInsets.only(left: 1, right: 1),
                                      child: ImageIcon(
                                        AssetImage("assets/images/dot.png"),
                                        size: 8,
                                        color: Colors.black54,
                                      ))
                                  : Container()
                        ]),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(5)),
                        ),
                        margin: EdgeInsets.only(left: 1, right: 1, top: 30),
                        padding: EdgeInsets.all(1),
                      ),
                      onTap: () {
                        setState(() => {
                              english = 0,
                              notify = notify == 0
                                  ? 1
                                  : notify == 1
                                      ? 2
                                      : 0,
                              bot = 0,
                              forget = 0,
                            });
                      }),
                  GestureDetector(
                      child: Container(
                        child: Row(children: [
                          Text(
                            StringSource.getText(context, "bot"),
                            style: bot != 1
                                ? TextStyle(fontSize: 10)
                                : TextStyle(
                                    fontSize: 10, color: Colors.blueAccent),
                          ),
                          bot == 1
                              ? Padding(
                                  padding: EdgeInsets.only(left: 1, right: 1),
                                  child: ImageIcon(
                                    AssetImage("assets/images/dot.png"),
                                    size: 8,
                                    color: Colors.blueAccent,
                                  ))
                              : bot == 2
                                  ? Padding(
                                      padding:
                                          EdgeInsets.only(left: 1, right: 1),
                                      child: ImageIcon(
                                        AssetImage("assets/images/dot.png"),
                                        size: 8,
                                        color: Colors.black54,
                                      ))
                                  : Container()
                        ]),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(5)),
                        ),
                        margin: EdgeInsets.only(left: 1, right: 1, top: 30),
                        padding: EdgeInsets.all(1),
                      ),
                      onTap: () {
                        setState(() => {
                              english = 0,
                              notify = 0,
                              bot = bot == 0
                                  ? 1
                                  : bot == 1
                                      ? 2
                                      : 0,
                              forget = 0,
                            });
                      }),
                  GestureDetector(
                      child: Container(
                        child: Row(children: [
                          Text(
                            StringSource.getText(context, "forget"),
                            style: forget == 0
                                ? TextStyle(fontSize: 10)
                                : TextStyle(
                                    fontSize: 10, color: Colors.blueAccent),
                          ),
                          forget == 1
                              ? Padding(
                                  padding: EdgeInsets.only(left: 1, right: 1),
                                  child: ImageIcon(
                                    AssetImage("assets/images/up.png"),
                                    size: 8,
                                    color: Colors.blueAccent,
                                  ))
                              : forget == 2
                                  ? Padding(
                                      padding:
                                          EdgeInsets.only(left: 1, right: 1),
                                      child: ImageIcon(
                                        AssetImage("assets/images/down.png"),
                                        size: 8,
                                        color: Colors.blueAccent,
                                      ))
                                  : Container()
                        ]),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(5)),
                        ),
                        margin: EdgeInsets.only(left: 1, right: 1, top: 30),
                        padding: EdgeInsets.all(1),
                      ),
                      onTap: () {
                        setState(() => {
                              english = 0,
                              notify = 0,
                              bot = 0,
                              forget = forget == 0
                                  ? 1
                                  : forget == 1
                                      ? 2
                                      : 0,
                            });
                      }),
                  Expanded(child: Container()),
                  Text(StringSource.getText(context, "notify") + ":"),
                  Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Switch(
                          value: switchOn,
                          onChanged: (switchOn) {
                            setState(() => {this.switchOn = !this.switchOn});
                          }))
                ],
              ),
            )
          ],
        ));
  }
}
