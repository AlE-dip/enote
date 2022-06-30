import 'package:enote/model/database/data_config.dart';
import 'package:enote/model/database/data_mean.dart';
import 'package:enote/model/database/data_relation_word.dart';
import 'package:enote/model/database/data_tag.dart';
import 'package:enote/model/database/data_tag_word.dart';
import 'package:enote/model/database/data_type.dart';
import 'package:enote/model/database/data_word.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../config.dart';

class UtilDatabase {
  late Database database;
  static final String DATABASE_NAME = "englishNotification.db";
  static final int DATABASE_VERSION = 1;

  static final String TABLE_CONFIG = "config";
  static final String CONFIG_ID = "id";
  static final String CONFIG_AUTO_NOTIFY = "auto_notify";

  Future<Database> initDatabase() async {
    String path = await getDatabasesPath();
    database = await openDatabase(
      join(path, DATABASE_NAME),
      onCreate: (database, version) async {
        DataWord.createTable(database);
        DataMean.createTable(database);
        DataType.createTable(database);
        DataTag.createTableTag(database);
        DataTagWord.createTable(database);
        DataRelationWord.createTable(database);
        DataConfig.createTable(database);
      },
      version: DATABASE_VERSION,
    );
    return database;
  }

  Future<Config> getConfig() {
    return DataConfig.getConfig(database);
  }
}