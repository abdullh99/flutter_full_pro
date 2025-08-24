import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:login_design/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:login_design/modules/done_tasks/done_tasks_screen.dart';
import 'package:login_design/modules/new_tasks/new_tasks_screen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart'; // تم إضافته

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  // databaseFactory = databaseFactoryFfi;


  Database? database;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String> titles = ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: screens[currentIndex],
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetShown) {
            if (formKey.currentState!.validate()) {
              insertToDatabase(
                title: titleController.text,
                time: timeController.text,
                date: dateController.text,
              ).then((value) {
                Navigator.pop(context);
                isBottomSheetShown = false;
                setState(() {
                  fabIcon = Icons.edit;
                });
              });
            }
          } else {
            scaffoldKey.currentState
                ?.showBottomSheet(
                  (context) => Container(
                    color: Colors.grey[300],
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: titleController,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'title must not be null';
                              }
                              return value;
                            },
                            decoration: const InputDecoration(
                              label: Text('Task Title'),
                              prefixIcon: Icon(Icons.title),
                              border: OutlineInputBorder(),
                            ),
                          ),

                          SizedBox(height: 15),

                          TextFormField(
                            controller: timeController,
                            keyboardType: TextInputType.datetime,
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ).then((value) {
                                timeController.text =
                                    value?.format(context) as String;
                                print(value?.format(context));
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Time must not be null';
                              }
                              return value;
                            },
                            decoration: const InputDecoration(
                              label: Text('Task Time'),
                              prefixIcon: Icon(Icons.watch_later_outlined),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 15),

                          TextFormField(
                            controller: dateController,
                            keyboardType: TextInputType.datetime,
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.parse('2025-12-03'),
                              ).then((value) {
                                dateController.text = DateFormat.yMMMd().format(
                                  value!,
                                );
                              });
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Date must not be null';
                              }
                              return value;
                            },
                            decoration: const InputDecoration(
                              label: Text('Task Date'),
                              prefixIcon: Icon(Icons.calendar_today),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  elevation: 20,
                )
                .closed
                .then((value) {
                  isBottomSheetShown = false;
                  setState(() {
                    fabIcon = Icons.edit;
                  });
                });

            isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
        },
        child: Icon(fabIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

  // Future<String> getName() async {
  //   return 'Ahmed Ali';
  // }

  void createDatabase() async {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database
            .execute(
              'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)',
            )
            .then((value) {
              print('table created');
            })
            .catchError((error) {
              print('error is: ${error.toString()}');
            });
      },
      onOpen: (database) {
        getDataFromDatabase(database);
        print('database opened');
      },
    );
  }

  Future insertToDatabase({
    required String title,
    required String time,
    required String date,
  }) async {
    return await database!.transaction((txn) {
      return txn
          .rawInsert(
            'INSERT INTO tasks (title, date, time, status) VALUES("$title","$time","$date","new")',
          )
          .then((value) {
            print('$value Insert successful');
          })
          .catchError((error) {
            print('error of insert is: ${error.toString()}');
          });
    });
  }

  void getDataFromDatabase(database) async {
    List<Map> tasks = await database!.rawQuery('SELECT * FROM tasks');
    print(tasks);
  }
}
