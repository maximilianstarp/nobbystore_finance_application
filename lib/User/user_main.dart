// Imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nobbystore_finance/User/calendar.dart';
import 'package:nobbystore_finance/User/Sell/sell_list.dart';
import 'package:nobbystore_finance/User/user_dashboard.dart';

import 'package:nobbystore_finance/vars.dart';

class UserMain extends StatefulWidget {
  @override
  _UserMainState createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  List<Widget> _widgetOptions = <Widget>[
    UserDashboard(),
    Calendar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          if (value == 1 || value == 0) {
            currentIndex = value;
            setState(() {});
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SellList()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("Planner"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined),
            title: Text("Sell"),
          )
        ],
      ),
    );
  }
}
