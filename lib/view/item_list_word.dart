import 'package:enote/main.dart';
import 'package:flutter/material.dart';

class ItemListWord extends StatefulWidget {
  CacheItemList cacheItemList;
  late ItemListWordState itemListWordState;

  ItemListWord(this.cacheItemList) {
    itemListWordState = ItemListWordState(cacheItemList, this);
  }

  @override
  State<StatefulWidget> createState() {
    return itemListWordState;
  }
}

class ItemListWordState extends State<ItemListWord> {
  bool isExpand = false;
  double padding = 10;
  List<int> words = [
    10,
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
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    10
  ];

  CacheItemList cacheItemList;
  late ItemListWord thisItem;

  ItemListWordState(this.cacheItemList, this.thisItem);

  @override
  Widget build(BuildContext context) {
    return !isExpand
        ? GestureDetector(
            child: Card(
              child: Container(
                child: Column(children: [
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("0",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 10)),
                      ),
                    ),
                    Text("0",
                        style: TextStyle(color: Colors.black54, fontSize: 10)),
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("15-07-2022",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10)),
                            )))
                  ]),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(
                            left: padding,
                            bottom: padding,
                            right: padding,
                            top: 5),
                        child: Text("english",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 18)),
                      )),
                      Container(
                        color: Colors.black12,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: padding, bottom: padding, left: 1),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(
                            left: padding,
                            bottom: padding,
                            right: padding,
                            top: 5),
                        child: Text("vietnamese",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      )),
                    ],
                  )
                ]),
              ),
            ),
            onTap: () {
              expand();
              if (cacheItemList.itemListWord != null &&
                  cacheItemList.itemListWord!.itemListWordState.isExpand) {
                cacheItemList.itemListWord!.itemListWordState.collapse();
              }
              cacheItemList.itemListWord = thisItem;
            })
        : GestureDetector(
            child: Card(
              child: Container(
                  child: Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("0",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 10)),
                      ),
                    ),
                    Text("0",
                        style: TextStyle(color: Colors.black54, fontSize: 10)),
                    Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("15-07-2022",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10)),
                            ))),
                  ]),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // height: double.infinity,
                              // width: double.infinity,
                              // margin: EdgeInsets.only(top: -30),
                              clipBehavior: Clip.none,
                              // color: Colors.red,
                              padding:
                                  EdgeInsets.only(left: padding, bottom: 10),
                              child: Text("english",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18)),
                            ),
                            Container(
                              // height: double.infinity,
                              // width: double.infinity,
                              // color: Colors.yellowAccent,
                              padding: EdgeInsets.only(
                                  left: padding, top: 10, bottom: 20),
                              child: Text("viet vi viet ",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/bot.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/edit.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/delete.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/copy.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/translate.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/volume.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Container(),
                                  /*ImageIcon(
                                    AssetImage("assets/images/bot.png"),
                                    size: 24,
                                  ),*/
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage(
                                        "assets/images/notification.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                                IconButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/reference.png"),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                  // padding: EdgeInsets.all(0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.black12,
                              padding: EdgeInsets.only(top: 1),
                              margin: EdgeInsets.only(left: 10, right: 10),
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 5, top: 5, bottom: 5),
                              child: ImageIcon(
                                AssetImage("assets/images/related.png"),
                                size: 10,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(right: 10),
                              child: SizedBox(
                                height: 15,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                    itemCount: words.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(child:
                                          Container(
                                            padding: EdgeInsets.only(top: 1, bottom: 1),
                                            child: Card(
                                            child: Container(
                                              // color: Colors.deepOrange,
                                              alignment: Alignment.center,
                                              child: Text(
                                                  "data" + words[index].toString(),
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 10)),
                                              padding: EdgeInsets.only(
                                                  left: 1, right: 1),
                                            ),
                                            margin:
                                            EdgeInsets.only(left: 2, right: 2),
                                          ),),
                                      onTap: (){

                                      },);
                                    }),
                              ),
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 5, top: 5, bottom: 5),
                              child: ImageIcon(
                                AssetImage("assets/images/synonym.png"),
                                size: 10,
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                    height: 15,
                                    width: MediaQuery.of(context).size.width,
                                    child: ListView.builder(
                                        itemCount: words.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return GestureDetector(child:
                                          Container(
                                            padding: EdgeInsets.only(top: 1, bottom: 1),
                                            child: Card(
                                              child: Container(
                                                // color: Colors.deepOrange,
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "data" + words[index].toString(),
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 10)),
                                                padding: EdgeInsets.only(
                                                    left: 1, right: 1),
                                              ),
                                              margin:
                                              EdgeInsets.only(left: 2, right: 2),
                                            ),),
                                            onTap: (){

                                            },);
                                        }),
                                  ),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 5, top: 5, bottom: 5),
                              child: ImageIcon(
                                AssetImage("assets/images/antonym.png"),
                                size: 10,
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                    height: 15,
                                    width: MediaQuery.of(context).size.width,
                                    child: ListView.builder(
                                        itemCount: words.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return GestureDetector(child:
                                          Container(
                                            padding: EdgeInsets.only(top: 1, bottom: 1),
                                            child: Card(
                                              child: Container(
                                                // color: Colors.deepOrange,
                                                alignment: Alignment.center,
                                                child: Text(
                                                    "data" + words[index].toString(),
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 10)),
                                                padding: EdgeInsets.only(
                                                    left: 1, right: 1),
                                              ),
                                              margin:
                                              EdgeInsets.only(left: 2, right: 2),
                                            ),),
                                            onTap: (){

                                            },);
                                        }),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
            ),
            onTap: () {
              collapse();
              cacheItemList.itemListWord = null;
            },
          );
  }

  void expand() {
    setState(() {
      isExpand = true;
    });
  }

  void collapse() {
    setState(() {
      isExpand = false;
    });
  }
}
