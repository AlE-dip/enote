import 'package:enote/model/config.dart';
import 'package:enote/model/database/util_database.dart';
import 'package:enote/view/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'handle/language.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("en"),
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
      ],
      supportedLocales: [const Locale('en', ''), const Locale('vn', '')],
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  late UtilDatabase utilDatabase;
  late Config config;

  @override
  State<StatefulWidget> createState() {
    utilDatabase = UtilDatabase();
    utilDatabase.initDatabase().whenComplete(() => {
      utilDatabase.getConfig()
    });
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringSource.getText(context, "app_bar_title"),
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search_sharp),
            onPressed: () {
              null;
            },
          ),
          new IconButton(
            icon: new Icon(Icons.g_translate_sharp),
            onPressed: () {
              null;
            },
          )
        ],
      ),
      drawer: NavigationDrawer(),
      body: Container(
          // child: ListView.builder(
          //     itemBuilder: (BuildContext context, int position) {
          //       return getRow(position);
          //     }),
          ),
    );
  }
}

Widget getRow(int position) {
  return Container();
}
