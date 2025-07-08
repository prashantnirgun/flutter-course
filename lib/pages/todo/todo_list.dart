import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'db_helper.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  DbHelper? dbHelper;
  String filterBy = 'All';
  List<Map<String, dynamic>> allTodos = [];
  DateFormat df = DateFormat('dd-MM-yyyy hh:mm a');
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController priorityController = TextEditingController();
  TextEditingController isCompletedController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper.getInstance();
    getAllNotes();
  }

  void getAllNotes() async {
    allTodos = await dbHelper!.fetchAllTodos();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo'), centerTitle: true),
      backgroundColor: Color(0xFF252525),
      body: allTodos.isNotEmpty
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
                            allTodos = await dbHelper!.fetchAllTodos();
                            setState(() {});
                          },
                        ),
                    ],
                    onChanged: (value) async {
                      allTodos = await dbHelper!.fetchAllTodos(query: value);
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 11),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    //padding: EdgeInsets.symmetric(horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton.icon(
                          icon: filterBy == 'All'
                              ? Icon(Icons.check)
                              : SizedBox(width: 24),
                          onPressed: () async {
                            allTodos = await dbHelper!.fetchAllTodos(
                              query: searchController.text,
                              priority: 0,
                            );
                            filterBy = 'All';

                            setState(() {});
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          label: Text('All'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton.icon(
                          icon: filterBy == 'Low'
                              ? Icon(Icons.check)
                              : SizedBox(width: 24),
                          onPressed: () async {
                            allTodos = await dbHelper!.fetchAllTodos(
                              query: searchController.text,
                              priority: 1,
                            );
                            filterBy = 'Low';

                            setState(() {});
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFFFFCC80),
                          ),
                          label: Text('Low'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton.icon(
                          icon: filterBy == 'Med'
                              ? Icon(Icons.check)
                              : SizedBox(width: 24), // fake icon width
                          onPressed: () async {
                            allTodos = await dbHelper!.fetchAllTodos(
                              query: searchController.text,
                              priority: 2,
                            );
                            filterBy = 'Med';

                            setState(() {});
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFFFFAB91),
                          ),
                          label: Center(child: Text('Med')),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton.icon(
                          icon: filterBy == 'High'
                              ? Icon(Icons.check)
                              : SizedBox(width: 24), // fake icon width
                          onPressed: () async {
                            allTodos = await dbHelper!.fetchAllTodos(
                              query: searchController.text,
                              priority: 3,
                            );
                            filterBy = 'High';

                            setState(() {});
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xFF81BEEA),
                          ),
                          label: Center(child: Text('High')),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allTodos.length,
                      itemBuilder: (_, index) {
                        return Card(
                          color: getBackground(
                            allTodos[index][DbHelper.COLUMN_TODO_PRIORITY],
                          ),
                          child: ListTile(
                            title: Text(
                              allTodos[index][DbHelper.COLUMN_TODO_TITLE],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  allTodos[index][DbHelper.COLUMN_TODO_DESC],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Text(
                                  df.format(
                                    DateTime.fromMicrosecondsSinceEpoch(
                                      int.parse(
                                        allTodos[index][DbHelper
                                            .COLUMN_TODO_CREATED_AT],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            leading: Checkbox(
                              value:
                                  allTodos[index][DbHelper
                                      .COLUMN_TODO_IS_COMPLETED] ==
                                  1, // Bind to actual data
                              onChanged: (value) async {
                                int isCompleted = value! ? 1 : 0;
                                bool check = await dbHelper!.toggleCompleted(
                                  isCompleted: isCompleted,
                                  id: allTodos[index][DbHelper.COLUMN_TODO_ID],
                                );
                                if (check) {
                                  allTodos = await dbHelper!.fetchAllTodos();
                                  setState(() {});
                                }
                              },
                            ),
                            onTap: () {
                              titleController.text =
                                  allTodos[index][DbHelper.COLUMN_TODO_TITLE];
                              descController.text =
                                  allTodos[index][DbHelper.COLUMN_TODO_DESC];
                              priorityController.text =
                                  allTodos[index][DbHelper.COLUMN_TODO_PRIORITY]
                                      .toString();
                              isCompletedController.text =
                                  allTodos[index][DbHelper
                                          .COLUMN_TODO_IS_COMPLETED]
                                      .toString();
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,

                                builder: (_) => bottomSheetUI(
                                  isUpdate: true,
                                  id: allTodos[index][DbHelper.COLUMN_TODO_ID],
                                ),
                              );
                            },
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
            //backgroundColor: Color(0xFF252525),
            context: context,
            isScrollControlled: true,
            builder: (_) => bottomSheetUI(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  String getPriority(int priority) {
    String priorityValue = '';
    switch (priority) {
      case 1:
        priorityValue = 'Low';
        break;
      case 2:
        priorityValue = 'Medium';
        break;
      default:
        priorityValue = 'High';
        break;
    }
    return priorityValue;
  }

  Color getBackground(int priority) {
    Color bg;
    switch (priority) {
      case 1:
        bg = Color(0xFFFFCC80);
        break;
      case 2:
        bg = Color(0xFFFFAB91);
        break;
      default:
        bg = Color(0xFF81BEEA);
        break;
    }
    return bg;
  }

  Widget bottomSheetUI({bool isUpdate = false, int id = 0}) {
    return Padding(
      padding: EdgeInsets.only(
        top: 11,
        left: 11,
        right: 11,
        bottom: 11 + MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isUpdate ? 'Update Todo' : 'Add Todo',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: priorityController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        labelText: 'Priority',
                        hintText: 'Enter Priority 1,2,3',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 240,
                    child: CheckboxListTile(
                      value: isCompletedController.text == '1',
                      title: Text('Completed ?'),
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                      onChanged: (value) {
                        isCompletedController.text = value! ? '1' : '0';
                      },
                    ),
                    // TextField(
                    //   keyboardType: TextInputType.number,
                    //   controller: isCompletedController,
                    //   decoration: InputDecoration(
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(11),
                    //     ),
                    //     labelText: 'Completed',
                    //     hintText: 'Enter Completed',
                    //   ),
                    // ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      bool check = false;
                      if (isUpdate) {
                        check = await dbHelper!.udpateTodo(
                          title: titleController.text,
                          desc: descController.text,
                          priority: int.parse(priorityController.text),
                          isCompleted: int.parse(isCompletedController.text),
                          id: id,
                        );
                      } else {
                        check = await dbHelper!.addTodo(
                          title: titleController.text,
                          desc: descController.text,
                          priority: int.parse(priorityController.text),
                          isCompleted: int.parse(isCompletedController.text),
                        );
                      }

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
  }
}
