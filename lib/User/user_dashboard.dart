// Imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import 'package:nobbystore_finance/vars.dart';
import 'package:nobbystore_finance/login.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: TabBar(
              indicatorColor: Colors.black45,
              tabs: [
                Tab(text: 'Week'),
                Tab(text: 'Quarter'),
                Tab(text: 'Year'),
              ],
            ),
            title: Text('Dashboard'),
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
              Week(),
              Quarter(),
              Year(),
            ],
          ),
        ),
      ),
    );
  }
}

// Screens
class Week extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Text(
                            "Stats",
                            style: TextStyle(
                              fontSize:
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: <Widget>[
                                _buildStatCard(
                                  'Einnahmen',
                                  '1.81 M',
                                  Colors.orange,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Verkäufe',
                                  '105 K',
                                  Colors.red,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                _buildStatCard(
                                  'critical',
                                  '391 K',
                                  Colors.green,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Active',
                                  '1.31 M',
                                  Colors.lightBlue,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Critical',
                                  'N/A',
                                  Colors.purple,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65 - 161,
              child: NewsApp(),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildStatCard(
      String title,
      String count,
      MaterialColor color,
      var height,
      var fontsize_small,
      var fontsize_big,
      var margin,
      var padding) {
    return Expanded(
      child: Container(
        height: height,
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_small,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_big,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Quarter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Text(
                            "Stats",
                            style: TextStyle(
                              fontSize:
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: <Widget>[
                                _buildStatCard(
                                  'Einnahmen',
                                  '1.81 M',
                                  Colors.orange,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Verkäufe',
                                  '105 K',
                                  Colors.red,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                _buildStatCard(
                                  'critical',
                                  '391 K',
                                  Colors.green,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Active',
                                  '1.31 M',
                                  Colors.lightBlue,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Critical',
                                  'N/A',
                                  Colors.purple,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65 - 161,
              child: NewsApp(),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildStatCard(
      String title,
      String count,
      MaterialColor color,
      var height,
      var fontsize_small,
      var fontsize_big,
      var margin,
      var padding) {
    return Expanded(
      child: Container(
        height: height,
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_small,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_big,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Text(
                            "Stats",
                            style: TextStyle(
                              fontSize:
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: <Widget>[
                                _buildStatCard(
                                  'Einnahmen',
                                  '1.81 M',
                                  Colors.orange,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Verkäufe',
                                  '105 K',
                                  Colors.red,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                _buildStatCard(
                                  'critical',
                                  '391 K',
                                  Colors.green,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Active',
                                  '1.31 M',
                                  Colors.lightBlue,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                                _buildStatCard(
                                  'Critical',
                                  'N/A',
                                  Colors.purple,
                                  MediaQuery.of(context).size.height * 0.09,
                                  ResponsiveFlutter.of(context).fontSize(1),
                                  ResponsiveFlutter.of(context).fontSize(1.5),
                                  MediaQuery.of(context).size.height * 0.01,
                                  MediaQuery.of(context).size.height * 0.008,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65 - 161,
              child: NewsApp(),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildStatCard(
      String title,
      String count,
      MaterialColor color,
      var height,
      var fontsize_small,
      var fontsize_big,
      var margin,
      var padding) {
    return Expanded(
      child: Container(
        height: height,
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_small,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_big,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// News App
class NewsApp extends StatefulWidget {
  NewsApp({Key key}) : super(key: key);

  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.03 - 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.15 - 60,
          child: Text(
            "News",
            style: TextStyle(
              color: Colors.black,
              fontSize: ResponsiveFlutter.of(context).fontSize(1.5),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.02 - 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.45 - 81,
          child: ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, index) {
              return Container(
                child: _buildNewsCard(
                  news[index],
                  colors[index % 5],
                  texts[index],
                  ResponsiveFlutter.of(context).fontSize(1),
                  ResponsiveFlutter.of(context).fontSize(1.5),
                  MediaQuery.of(context).size.height * 0.01,
                  MediaQuery.of(context).size.height * 0.008,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Expanded _buildNewsCard(String title, var color, String announcement,
      var fontsize_small, var fontsize_big, var margin, var padding) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_small,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              announcement,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontsize_big,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
