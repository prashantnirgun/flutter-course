import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_widget/pages/database/db_helper.dart';

class NoteHomePage extends StatefulWidget {
  const NoteHomePage({super.key});

  @override
  State<NoteHomePage> createState() => _NoteHomePageState();
}

class _NoteHomePageState extends State<NoteHomePage> {
  DbHelper? dbHelper;
  List<Map<String, dynamic>> allNotes = [];
  DateFormat df = DateFormat('dd-MM-yyyy hh:mm a');
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper.getInstance();
    getAllNotes();
  }

  void getAllNotes() async {
    allNotes = await dbHelper!.fetchAllNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes'), centerTitle: true),
      body: allNotes.isNotEmpty
          ? Container(
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: allNotes.length,
                itemBuilder: (_, index) {
                  return Card(
                    child: ListTile(
                      title: Text(allNotes[index][DbHelper.COLUMN_NOTE_TITLE]),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(allNotes[index][DbHelper.COLUMN_NOTE_DESC]),
                          Text(
                            df.format(
                              DateTime.fromMicrosecondsSinceEpoch(
                                int.parse(
                                  allNotes[index][DbHelper
                                      .COLUMN_NOTE_CREATED_AT],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //edit
                          IconButton(
                            onPressed: () {
                              titleController.text =
                                  allNotes[index][DbHelper.COLUMN_NOTE_TITLE];
                              descController.text =
                                  allNotes[index][DbHelper.COLUMN_NOTE_DESC];
                              showModalBottomSheet(
                                context: context,
                                builder: (_) => Container(
                                  height: 350,
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Edit Note',
                                          style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 11),
                                        TextField(
                                          controller: titleController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                            ),
                                            labelText: 'Desc',
                                            hintText: 'Enter note Desc',
                                          ),
                                        ),
                                        SizedBox(height: 11),
                                        TextField(
                                          minLines: 4,
                                          maxLines: 4,
                                          controller: descController,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                            ),
                                            labelText: 'Desc',
                                            hintText: 'Enter note Desc',
                                          ),
                                        ),
                                        SizedBox(height: 11),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            OutlinedButton(
                                              onPressed: () async {
                                                bool check = await dbHelper!
                                                    .udpateNote(
                                                      title:
                                                          titleController.text,
                                                      desc: descController.text,
                                                      id:
                                                          allNotes[index][DbHelper
                                                              .COLUMN_NOTE_ID],
                                                    );
                                                if (check) {
                                                  getAllNotes();
                                                }
                                                Navigator.pop(context);
                                              },
                                              child: Text('Save'),
                                            ),
                                            SizedBox(width: 11),
                                            OutlinedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('Cancel'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.edit,
                              size: 35,
                              color: Colors.blue,
                            ),
                          ),
                          //Delete
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (_) {
                                  return Container(
                                    padding: EdgeInsets.all(11),
                                    height: 140,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Are you sure want to Delete?',
                                          style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 21),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            OutlinedButton(
                                              onPressed: () async {
                                                bool isDelted = await dbHelper!
                                                    .deleteNote(
                                                      id:
                                                          allNotes[index][DbHelper
                                                              .COLUMN_NOTE_ID],
                                                    );
                                                if (isDelted) {
                                                  getAllNotes();
                                                }
                                                Navigator.pop(context);
                                              },
                                              child: Text('Yes'),
                                            ),
                                            SizedBox(width: 11),
                                            OutlinedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('No'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          : Center(child: Text('No notes yet!!!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //handle previeious
          titleController.clear();
          descController.clear();

          showModalBottomSheet(
            //Make it persistant
            //isDismissible: false,
            //enableDrag: false,
            context: context,
            builder: (_) => Container(
              height: 350,
              padding: EdgeInsets.all(11),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Add Notes',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 11),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        labelText: 'Title',
                        hintText: 'Enter note title',
                      ),
                    ),
                    SizedBox(height: 11),
                    TextField(
                      minLines: 4,
                      maxLines: 4,
                      controller: descController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        labelText: 'Desc',
                        hintText: 'Enter Note Desc',
                      ),
                    ),
                    SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          onPressed: () async {
                            bool check = await dbHelper!.addNote(
                              title: titleController.text,
                              desc: descController.text,
                            );

                            if (check) {
                              getAllNotes();
                              Navigator.pop(context);
                            }
                          },
                          child: Text('Save'),
                        ),
                        SizedBox(width: 11),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
