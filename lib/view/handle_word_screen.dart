import 'package:enote/handle/language.dart';
import 'package:flutter/material.dart';
import '../model/type.dart';
import '../model/database/tag.dart';
import '../model/word.dart';

class HandleWordScreen extends StatefulWidget{
  late List<Type> choseType;
  late List<Tag> choseTag;
  late List<Word> choseWordRelated, choseWordSynonym, choseWordAntonym;


  HandleWordScreen(){
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

class _HandleWordScreen extends State<HandleWordScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_outlined)
        ),
        title: Text(StringSource.getText(context, "translate")),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.g_translate_sharp))
        ],
      ),
      body: Container(

      ),
    );
  }

}