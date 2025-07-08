import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'db_helper.dart';
import 'note_edit.dart';

class NotePage extends StatefulWidget {
  final Map<String, dynamic> note;
  const NotePage({super.key, required this.note});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  DateFormat df = DateFormat('MMM, d yyyy');
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
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NoteEdit(note: widget.note),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.note_alt_outlined,
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
                  ],
                ),
                SizedBox(height: 11),
                Text(
                  '${widget.note[DbHelper.COLUMN_NOTE_TITLE]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 11),
                  child: Text(
                    df.format(
                      DateTime.fromMicrosecondsSinceEpoch(
                        int.parse(widget.note[DbHelper.COLUMN_NOTE_CREATED_AT]),
                      ),
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.white60),
                  ),
                ),
                Text(
                  '${widget.note[DbHelper.COLUMN_NOTE_DESC]}',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
