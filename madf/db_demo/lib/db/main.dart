// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory directory = await getApplicationCacheDirectory();
    String path = join(directory.path, 'todo.db');
    var db = await openDatabase(path, onCreate: (db, version) async {
      await db.execute('''
          create table Todo(
           id INTEGER PRIMARY KEY AUTOINCREMENT,
           title TEXT NOT NULL,
           description TEXT,
           status TEXT NOT NULL
          )''');
      await db.execute('''
          create table Category(
           id INTEGER PRIMARY KEY AUTOINCREMENT,
           name TEXT NOT NULL,
           todo_id INTEGER NOT NULL,
           FOREIGN KEY (todo_id) REFERENCES Todo(id)
          )
        ''');
    }, onUpgrade: (db, oldVersion, newVersion) {}, version: 1);
    return db;
  }

  Future<List<Map<String, dynamic>>> selectAllTodos({
    String? category,
    String? status,
  }) async {
    Database db = await initDatabase();
    if (category != null) {
      return await db.rawQuery(
          "select * from Todo where id in (select todo_id from Category where name = '$category')");
    }
    if (status != null) {
      return await db.rawQuery("select * from Todo where status = '$status'");
    }
    return await db.rawQuery("select * from Todo");
  }

  Future<void> insertTodo() async {
    Database db = await initDatabase();
    await db.rawInsert(
        "insert into Todo (title, description, status) values ('title', 'description', 'status')");
  }

  Future<void> updateTodo() async {
    Database db = await initDatabase();
    await db.rawUpdate("update Todo set title = 'new title' where id = 1");
  }

  Future<void> deleteTodo() async {
    Database db = await initDatabase();
    await db.rawDelete("delete from Todo where id = 1");
  }

  Future<void> closeDatabase() async {
    Database db = await initDatabase();
    db.close();
  }

  Future<void> dropTable() async {
    Database db = await initDatabase();
    await db.execute("drop table Todo;");
  }
}
