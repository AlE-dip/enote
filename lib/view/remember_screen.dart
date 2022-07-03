import 'package:enote/handle/language.dart';
import 'package:flutter/material.dart';

class RememberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_outlined)),
          title: Text(StringSource.getText(context, "remember")),
          bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [Tab(text: "tab1"), Tab(text: "tab2")]),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("tab1"),
            ),
            Center(
              child: Text("tab2"),
            ),
          ],
        ),
      ),
    );
  }
}
