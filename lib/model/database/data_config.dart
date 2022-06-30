import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../config.dart';

class DataConfig{
  static final String TABLE_CONFIG = "config";
  static final String CONFIG_ID = "id";
  static final String CONFIG_AUTO_NOTIFY = "auto_notify";
  static final String CONFIG_LANGUAGE = "language";

  static void createTable(Database database){
    String createTableConfig = "CREATE TABLE IF NOT EXISTS $TABLE_CONFIG(" +
        "$CONFIG_ID INTEGER PRIMARY KEY AUTOINCREMENT, " +
        "$CONFIG_AUTO_NOTIFY INTEGER, " +
        "$CONFIG_LANGUAGE TEXT)";

    database.execute(createTableConfig);
  }

  static Future<Config> getConfig(Database database) async {
    String query = "SELECT * FROM $TABLE_CONFIG";
    List<Map> list = await database.rawQuery(query, null);
    var config = null;
    for (Map map in list){
      config = new Config(map[CONFIG_ID], map[CONFIG_AUTO_NOTIFY], map[CONFIG_LANGUAGE]);
    }
    if(config == null){
      config = new Config(0, 0, "en");
      addDefaultConfig(database, config);
    }
    return config;
  }

  static void addDefaultConfig(Database database, Config config) {
    String query = "INSERT INTO $TABLE_CONFIG VALUES(null, ${config.autoNotify}, '${config.language}')";
    database.execute(query);
  }
}