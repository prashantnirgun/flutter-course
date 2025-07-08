import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_widget/app_routes.dart';
import 'db_helper.dart';
//import 'package:test_widget/pages/notes/db_helper.dart';

class NoteEdit extends StatefulWidget {
  final Map<String, dynamic> note;
  const NoteEdit({super.key, required this.note});

  @override
  State<NoteEdit> createState() => _NoteEditState();
}

class _NoteEditState extends State<NoteEdit> {
  DbHelper? dbHelper;

  DateFormat df = DateFormat('MMM, d yyyy');

  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController bgController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper.getInstance();
    titleController.text = widget.note[DbHelper.COLUMN_NOTE_TITLE];
    descController.text = widget.note[DbHelper.COLUMN_NOTE_DESC];
    bgController.text = widget.note[DbHelper.COLUMN_NOTE_BG].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(11),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.resolveWith<Color?>(
                              (Set<WidgetState> states) => Colors.grey.shade800,
                            ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              4,
                            ), // set 0 for hard square
                          ),
                        ),
                        padding: WidgetStateProperty.all(EdgeInsets.all(0)),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        if (widget.note[DbHelper.COLUMN_NOTE_ID] > 0) {
                          await dbHelper!.udpateNote(
                            title: titleController.text,
                            desc: descController.text,
                            bg: int.parse(bgController.text),
                            id: widget.note[DbHelper.COLUMN_NOTE_ID],
                          );
                          Navigator.popAndPushNamed(
                            context,
                            AppRoutes.NOTEPAGE,
                          );
                        }
                      },
                      child: Text('Save'),
                    ),
                  ],
                ),
                SizedBox(height: 11),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter title',
                  ),
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            bgController.text = '1';
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFFFFCC80),
                        ),
                        child: Text('Light'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            bgController.text = '2';
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFFFFAB91),
                        ),
                        child: Text('Warm'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            bgController.text = '3';
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xFF81BEEA),
                        ),
                        child: Text('Caution'),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                TextField(
                  controller: descController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type something...',
                  ),
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
