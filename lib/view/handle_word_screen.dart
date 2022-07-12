import 'package:enote/handle/language.dart';
import 'package:enote/view/app_header_seccond.dart';
import 'package:enote/view/edit_text.dart';
import 'package:flutter/material.dart';
import '../model/type.dart';
import '../model/database/tag.dart';
import '../model/word.dart';

class HandleWordScreen extends StatefulWidget {
  late List<Type> choseType;
  late List<Tag> choseTag;
  late List<Word> choseWordRelated, choseWordSynonym, choseWordAntonym;

  HandleWordScreen() {
    choseType = <Type>[];
    choseTag = <Tag>[];
    choseWordRelated = <Word>[];
    choseWordSynonym = <Word>[];
    choseWordAntonym = <Word>[];
  }

  @override
  State<StatefulWidget> createState() {
    return _HandleWordScreen();
  }
}

class _HandleWordScreen extends State<HandleWordScreen> {
  double padding = 15;
  List<int> words = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeaderSeccond(
            StringSource.getText(context, "translate"),
            null,
            IconButton(
              icon: new Icon(Icons.g_translate_sharp),
              onPressed: () {
                null;
              },
              padding: EdgeInsets.only(left: padding, right: padding),
              color: Colors.black,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                    child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(10),
                            child: EditText.createEditText(
                                Image(
                                  image: AssetImage(
                                      "assets/images/united_kingdom.png"),
                                  height: 24,
                                  width: 28,
                                ),
                                StringSource.getText(context, "englishL"),
                                Container(
                                  child: ImageIcon(
                                    AssetImage("assets/images/cancel.png"),
                                    size: 15,
                                  ),
                                  padding: EdgeInsets.only(right: 5),
                                )),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(10),
                            child: EditText.createEditText(
                                Image(
                                  image:
                                      AssetImage("assets/images/vietnam.png"),
                                  height: 24,
                                  width: 28,
                                ),
                                StringSource.getText(context, "englishL"),
                                Container(
                                  child: ImageIcon(
                                    AssetImage("assets/images/cancel.png"),
                                    size: 15,
                                  ),
                                  padding: EdgeInsets.only(right: 5),
                                )),
                          )),
                        ],
                      ),
                    ],
                  ),
                )),
                Card(
                    shadowColor: Colors.black26,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: padding,
                                  top: padding,
                                  bottom: padding,
                                  right: 10),
                              child: ImageIcon(
                                  AssetImage("assets/images/type.png"),
                                  size: 20),
                            ),
                            Text(StringSource.getText(context, "type")),
                            Expanded(
                                child: Container(
                                    padding:
                                        EdgeInsets.only(right: 10, left: 5),
                                    child: SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width,
                                      child: Container(
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: words.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Container(
                                                  child: ChoiceChip(
                                                    label: Text("label"),
                                                    selected: false,
                                                    onSelected: (isCheck) {},
                                                  ),
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5),
                                                );
                                              })),
                                    )))
                          ],
                        ),
                      ],
                    )),
                Card(
                    shadowColor: Colors.black26,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: padding,
                                  top: padding,
                                  bottom: padding,
                                  right: 10),
                              child: ImageIcon(
                                  AssetImage("assets/images/tag.png"),
                                  size: 20),
                            ),
                            Text(StringSource.getText(context, "tag")),
                            Expanded(
                                child: Container(
                                    padding:
                                        EdgeInsets.only(right: 10, left: 5),
                                    child: SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width,
                                      child: Container(
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: words.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Container(
                                                  child: ChoiceChip(
                                                    label: Text("label"),
                                                    selected: false,
                                                    onSelected: (isCheck) {},
                                                  ),
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5),
                                                );
                                              })),
                                    )))
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
