import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
//import 'package:test_widget/pages/notes/db_helper.dart';
import 'db_provider.dart';
import 'db_helper.dart';
//import 'package:provider/provider.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({super.key});

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  //DbHelper? dbHelper;
  List<Map<String, dynamic>> allNotes = [];
  DateFormat df = DateFormat('dd-MM-yyyy hh:mm a');
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<DBProvider>().getAllNotes();
    //dbHelper = DbHelper.getInstance();
    //getAllNotes();
  }

  /*
  void getAllNotes() async {
    allNotes = await dbHelper!.fetchAllNotes();
    setState(() {});
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes'), centerTitle: true),
      body: allNotes.isNotEmpty
          ? Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  SearchBar(
                    controller: searchController,
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 11),
                    ),
                    leading: Icon(Icons.search),
                    trailing: [
                      if (searchController.text.isNotEmpty)
                        IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () async {
                            searchController.clear();
                            //allNotes = await dbHelper!.fetchAllNotes();
                            //setState(() {});
                          },
                        ),
                    ],
                    onChanged: (value) async {
                      /*
                      allNotes = await dbHelper!.fetchAllNotes(query: value);
                      setState(() {});
                      */
                    },
                  ),
                  SizedBox(height: 11),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allNotes.length,
                      itemBuilder: (_, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              allNotes[index][DbHelper.COLUMN_NOTE_TITLE],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  allNotes[index][DbHelper.COLUMN_NOTE_DESC],
                                ),
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
                                        allNotes[index][DbHelper
                                            .COLUMN_NOTE_TITLE];
                                    descController.text =
                                        allNotes[index][DbHelper
                                            .COLUMN_NOTE_DESC];
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (BuildContext builderContext) =>
                                          bottomSheetUI(
                                            builderContext,
                                            isUpdate: true,
                                            id:
                                                allNotes[index][DbHelper
                                                    .COLUMN_NOTE_ID],
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
                                                      /*
                                                      bool
                                                      isDelted = await dbHelper!
                                                          .deleteNote(
                                                            id:
                                                                allNotes[index][DbHelper
                                                                    .COLUMN_NOTE_ID],
                                                          );
                                                      if (isDelted) {
                                                        getAllNotes();
                                                      }
                                                      Navigator.pop(context);
                                                      */
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
                  ),
                ],
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
            isScrollControlled: true,
            builder: (BuildContext builderContext) =>
                bottomSheetUI(builderContext),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget bottomSheetUI(
    BuildContext context, {
    bool isUpdate = false,
    int id = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: 11,
        left: 11,
        right: 11,
        bottom: 11 + 10, //MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isUpdate ? 'Update Note' : 'Add Notes',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
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
                  alignLabelWithHint: true,
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
                      //await context.read().getAllNotes();
                      //Provider.of<DBProvider>(context).getAllNotes()
                      Provider.of<DBProvider>(
                        context,
                        listen: false,
                      ).getAllNotes();

                      /*
                      bool check = false;
                      if (isUpdate) {
                        check = await dbHelper!.udpateNote(
                          title: titleController.text,
                          desc: descController.text,
                          bg: 1,
                          id: id,
                        );
                      } else {
                        check = await dbHelper!.addNote(
                          title: titleController.text,
                          desc: descController.text,
                          bg: 1,
                        );
                      }

                      if (check) {
                        getAllNotes();
                        Navigator.pop(context);
                      }
                      */
                    },
                    child: Text('Save'),
                  ),
                  SizedBox(width: 11),
                  OutlinedButton(
                    onPressed: () {
                      //Navigator.pop(context);
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
  }
}
