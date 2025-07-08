import 'package:flutter/material.dart';
import 'package:test_widget/pages/notes/db_helper.dart';

class DBProvider extends ChangeNotifier {
  DbHelper? dbHelper;
  //constructor
  DBProvider({required this.dbHelper});

  //declare collection
  List<Map<String, dynamic>> _mData = [];

  List<Map<String, dynamic>> get mData => _mData;

  Future<void> getAllNotes({String query = ''}) async {
    _mData = await dbHelper!.fetchAllNotes(query: query);
    notifyListeners();
  }

  Future<void> addNote({
    required String title,
    required String desc,
    required int bg,
  }) async {
    bool isAdded = await dbHelper!.addNote(title: title, desc: desc, bg: bg);
    if (isAdded) {
      getAllNotes();
    }
  }

  Future<void> updateNote({
    required String title,
    required String desc,
    required int bg,
    required int id,
  }) async {
    bool isUpdated = await dbHelper!.udpateNote(
      title: title,
      desc: desc,
      bg: bg,
      id: id,
    );
    if (isUpdated) {
      getAllNotes();
    }
  }

  Future<void> deleteNote({required int id}) async {
    bool isDeleted = await dbHelper!.deleteNote(id: id);
    if (isDeleted) {
      getAllNotes();
    }
  }
}
