import 'package:enote/model/relation_word.dart';
import 'database/tag.dart';
import 'mean.dart';

class Word {
  int id;
  String english;
  List<Mean>? means;
  String date;
  int notification;
  //0 khong dat thong bao
  //1 dat thong bao
  int auto;
  int game;
  List<Tag>? tags;
  List<RelationWord>? relationWords;
  int forget;

  Word(this.id, this.english, this.means, this.date, this.notification,
      this.auto, this.game, this.tags, this.relationWords, this.forget);
}