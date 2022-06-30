import 'package:sqflite/sqflite.dart';

class DataRelationWord {
  static final String TABLE_WORD_WORD = "word_word";
  static final String WORD_WORD_ID = "id";
  static final String WORD_WORD_WORD_ID = "word_id";
  static final String WORD_WORD_WORD_RELATION_ID = "word_relation_id";
  static final String WORD_WORD_TYPE_RELATION = "type_relation";

  static void createTable(Database database){
    String createTableWordWord = "CREATE TABLE IF NOT EXISTS $TABLE_WORD_WORD(" +
        "$WORD_WORD_ID INTEGER PRIMARY KEY AUTOINCREMENT, " +
        "$WORD_WORD_WORD_ID INTEGER, " +
        "$WORD_WORD_WORD_RELATION_ID INTEGER, " +
        "$WORD_WORD_TYPE_RELATION INTEGER)";

    database.execute(createTableWordWord);
  }

  // public static void addRelationWord(Word word, Word relationWord, int type, Database database){
  //   SQLiteDatabase db = database.getWritableDatabase();
  //   String query = String.format("INSERT INTO %s VALUES(null, %s, %s, %s);",
  //       TABLE_WORD_WORD, word.id, relationWord.id, type);
  //
  //   db.execSQL(query);
  //   db.close();
  // }
  //
  // public static void addRelationWord(RelationWord relationWord, Database database){
  //   SQLiteDatabase db = database.getWritableDatabase();
  //   String query = String.format("INSERT INTO %s VALUES(null, %s, %s, %s);",
  //       TABLE_WORD_WORD, relationWord.wordId, relationWord.relationWordId, relationWord.relationType);
  //
  //   db.execSQL(query);
  //   db.close();
  // }
  //
  // public static RelationWord getNewRelationWord(Database database){
  //   SQLiteDatabase db = database.getReadableDatabase();
  //   String query = String.format("SELECT * FROM %s ORDER BY %s DESC LIMIT 1", TABLE_WORD_WORD, WORD_WORD_ID);
  //   Cursor cursor = db.rawQuery(query, null);
  //   cursor.moveToNext();
  //   RelationWord relationWord = new RelationWord(cursor.getInt(0), cursor.getInt(1),
  //       cursor.getInt(2), cursor.getInt(3));
  //   db.close();
  //   return relationWord;
  // }
  //
  // public static ArrayList<RelationWord> getAll(Database database){
  //   SQLiteDatabase db = database.getReadableDatabase();
  //
  //   String query = "SELECT * FROM " + TABLE_WORD_WORD;
  //   Cursor cursor = db.rawQuery(query, null);
  //
  //   ArrayList<RelationWord> relationWords = new ArrayList<>();
  //   while (cursor.moveToNext()){
  //     RelationWord relationWord = new RelationWord(cursor.getInt(0), cursor.getInt(1),
  //         cursor.getInt(2), cursor.getInt(3));
  //     relationWords.add(relationWord);
  //   }
  //   db.close();
  //   return relationWords;
  // }
  //
  // public static void deleteRelation(int id, Database database) {
  //   SQLiteDatabase db = database.getWritableDatabase();
  //
  //   String query = String.format("DELETE FROM %s WHERE %s = %s", TABLE_WORD_WORD, WORD_WORD_ID, id);
  //
  //   db.execSQL(query);
  //   db.close();
  // }
}
