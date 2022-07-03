import 'package:flutter/material.dart';

class ItemListWord extends StatefulWidget {
  bool isExpand;
  var onClick;

  ItemListWord(this.isExpand, this.onClick);

  @override
  State<StatefulWidget> createState() {
    return ItemListWordState(isExpand, onClick);
  }
}

class ItemListWordState extends State<ItemListWord> {
  bool isExpand;
  var onClick;

  ItemListWordState(this.isExpand, this.onClick);

  @override
  Widget build(BuildContext context) {
    return !isExpand
        ? GestureDetector(
            child: Card(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("0"),
                        ),
                        Expanded(
                          child: Center(
                            child: Text("0"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("15-07-2022"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            onTap: () {
              onClick();
            },
          )
        : GestureDetector(
            child: Card(
              child: Container(
                child: Text("fknsfsfkdfksjfvkd"),
              ),
            ),
            onTap: () {
              onClick();
            },
          );
  }
}
