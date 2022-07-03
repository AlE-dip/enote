import 'package:enote/model/config.dart';
import 'package:enote/model/database/util_database.dart';
import 'package:enote/view/app_header.dart';
import 'package:enote/view/edit_text.dart';
import 'package:enote/view/handle_word_screen.dart';
import 'package:enote/view/item_list_word.dart';
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
  MainScreen({super.key});

  late UtilDatabase utilDatabase;
  late Config config;

  @override
  State<StatefulWidget> createState() {
    // utilDatabase = UtilDatabase();
    // utilDatabase.initDatabase().whenComplete(() => {utilDatabase.getConfig()});
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<int> words = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
  int indexClickList = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          AppHeader(() {
            _key.currentState!.openDrawer();
          }),
          Expanded(
              child: Container(
            child: ListView.builder(
              itemCount: words.length,
              itemBuilder: (BuildContext context, int index) {
                return indexClickList == index
                    ? ItemListWord(true, () {
                        setState(() => {indexClickList = index});
                      })
                    : ItemListWord(false, () {
                        setState(() => {indexClickList = index});
                      });
              },
            ),
          ))
        ],
      ),
    );
  }
}

Widget getRow(int position) {
  return Container();
}
