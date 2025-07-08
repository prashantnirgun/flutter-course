import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  //private constructor
  DbHelper._();

  ///Singletone
  static DbHelper getInstance() => DbHelper._();

  Database? mDB;

  static const String TABLE_TODO = "todo";
  static const String COLUMN_TODO_ID = "t_id";
  static const String COLUMN_TODO_TITLE = "t_title";
  static const String COLUMN_TODO_DESC = "t_desc";
  static const String COLUMN_TODO_PRIORITY = "t_priority";
  static const String COLUMN_TODO_IS_COMPLETED = "t_is_completed";
  static const String COLUMN_TODO_CREATED_AT = "t_created_at";

  Future<Database> initDB() async {
    mDB ??= await openDB();

    return mDB!;
  }

  Future<Database> openDB() async {
    Directory appDir = await getApplicationCacheDirectory();
    String dbPath = join(appDir.path, "todoDB.db");

    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        //Table declaration
        db.execute(
          "CREATE TABLE $TABLE_TODO ($COLUMN_TODO_ID integer primary key autoincrement, $COLUMN_TODO_TITLE text, $COLUMN_TODO_DESC text, $COLUMN_TODO_PRIORITY integer, $COLUMN_TODO_IS_COMPLETED integer, $COLUMN_TODO_CREATED_AT text)",
        );
      },
    );
  }

  //add
  Future<bool> addTodo({
    required String title,
    required String desc,
    required int priority,
    required int isCompleted,
  }) async {
    var db = await initDB();
    int rowsEffected = await db.insert(TABLE_TODO, {
      COLUMN_TODO_TITLE: title,
      COLUMN_TODO_DESC: desc,
      COLUMN_TODO_PRIORITY: priority,
      COLUMN_TODO_IS_COMPLETED: isCompleted,
      COLUMN_TODO_CREATED_AT: DateTime.now().millisecondsSinceEpoch.toString(),
    });
    return rowsEffected > 0;
  }

  //Get all queries
  Future<List<Map<String, dynamic>>> fetchAllTodos({
    String query = '',
    int priority = 0,
  }) async {
    var db = await initDB();
    String condition = "$COLUMN_TODO_TITLE LIKE ? OR $COLUMN_TODO_DESC LIKE ?";
    List<dynamic> arguments = ["%$query%", "%$query%"];
    if (priority > 0) {
      condition = "($condition) AND $COLUMN_TODO_PRIORITY = ?";
      arguments.add(priority);
      print(condition);
      print(arguments);
    }
    List<Map<String, dynamic>> allData = await db.query(
      TABLE_TODO,
      where: condition,
      whereArgs: arguments,
    );
    print('data');

    //print(allData);
    return allData;
  }

  //togle
  Future<bool> toggleCompleted({
    required int isCompleted,
    required int id,
  }) async {
    var db = await initDB();

    int rowsEffected = await db.update(
      TABLE_TODO,
      {COLUMN_TODO_IS_COMPLETED: isCompleted},
      where: '$COLUMN_TODO_ID = ?',
      whereArgs: ['$id'],
    );
    print('rowseffected');
    print(rowsEffected);
    return rowsEffected > 0;
  }

  //update
  Future<bool> udpateTodo({
    required String title,
    required String desc,
    required int priority,
    required int isCompleted,
    required int id,
  }) async {
    var db = await initDB();
    int rowsEffected = await db.update(TABLE_TODO, {
      COLUMN_TODO_TITLE: title,
      COLUMN_TODO_DESC: desc,
      COLUMN_TODO_PRIORITY: priority,
      COLUMN_TODO_IS_COMPLETED: isCompleted,
    }, where: '$COLUMN_TODO_ID = $id');

    return rowsEffected > 0;
  }

  //delete
  Future<bool> deleteTodo({required int id}) async {
    var db = await initDB();
    int rowsEffected = await db.delete(
      TABLE_TODO,
      where: '$COLUMN_TODO_ID = ?',
      whereArgs: ['$id'],
    );
    return rowsEffected > 0;
  }
}
