// Imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nobbystore_finance/login.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: TabBar(
              indicatorColor: Colors.black45,
              tabs: [
                Tab(text: 'Week A'),
                Tab(text: 'Week B'),
              ],
            ),
            title: Text('Planner'),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }),
            ],
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

// Screens
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: DataTable(columns: [
            DataColumn(label: Text("Day")),
            DataColumn(label: Text("Seller")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("Monday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Tuesday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Wednesday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Thursday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Friday")),
              DataCell(Text("Someone")),
            ]),
          ]),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: DataTable(columns: [
            DataColumn(label: Text("Day")),
            DataColumn(label: Text("Seller")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("Monday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Tuesday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Wednesday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Thursday")),
              DataCell(Text("Someone")),
            ]),
            DataRow(cells: [
              DataCell(Text("Friday")),
              DataCell(Text("Someone")),
            ]),
          ]),
        ),
      ),
    );
  }
}
