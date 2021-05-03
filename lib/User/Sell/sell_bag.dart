// Imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

import 'package:nobbystore_finance/User/user_main.dart';
import 'package:nobbystore_finance/User/Sell/lists.dart';
import 'package:nobbystore_finance/User/Sell/sell_list.dart';

class SellBag extends StatefulWidget {
  @override
  _SellBagState createState() => _SellBagState();
}

class _SellBagState extends State<SellBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verkauf"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Icon(LineariconsFree.cross),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              }),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text("Produkt"),
                  ),
                  DataColumn(
                    label: Text("Preis in €"),
                  ),
                  DataColumn(label: Text("")),
                ],
                rows: [],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6 - 56,
            child: ListView.builder(
              itemCount: bag.length,
              itemBuilder: (context, index) {
                return Container(
                  child: _buildItem(bag[index][0], bag[index][2]),
                );
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(
              child: DataTable(
                columns: [
                  DataColumn(
                    label: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SellList()),
                        );
                      },
                      textColor: Theme.of(context).primaryColor,
                      child: const Text('Hinzufügen'),
                    ),
                  ),
                  DataColumn(
                    label: RaisedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog2(context),
                        );
                      },
                      textColor: Theme.of(context).primaryColor,
                      child: const Text('Beenden'),
                    ),
                  ),
                  DataColumn(label: Text("Summe:")),
                  DataColumn(label: Text(sum.toString() + "€")),
                ],
                rows: [],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildItem(var product, var worth) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Center(
          child: DataTable(
            columns: [
              DataColumn(
                label: Text(product),
              ),
              DataColumn(
                label: Text(worth.toString()),
              ),
              DataColumn(label: Text("")),
            ],
            rows: [],
          ),
        ),
      ),
    );
  }
}

// Popup Dialog
Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Warning'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Willst du wirklich den Kauf abbrechen?"),
      ],
    ),
    actions: <Widget>[
      new RaisedButton(
        onPressed: () {
          // Summe auf 0 zurücksetzten
          sum = 0;
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserMain()),
          );
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Yes'),
      ),
      new RaisedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('No'),
      ),
    ],
  );
}

void lager(object) {
  object[1] = object[1] - 1;
}

void schleife() {
  var y = 1;
  // ignore: unnecessary_statements
  for (y - 1; y - 1 < bag.length; y++) {
    var w = bag[y - 1][3];
    var index = liste[w];
    lager(index);
  }
  bag = [];
}

// Popup Dialog2
Widget _buildPopupDialog2(BuildContext context) {
  return new AlertDialog(
    title: const Text('Warning'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Willst du wirklich den Kauf beenden?"),
      ],
    ),
    actions: <Widget>[
      new RaisedButton(
        onPressed: () {
          // Code zum abziehen des Lagerbestandes
          schleife();
          // Fehelender Code: Die "Einkaufsliste" wird dann in die Datenbank "gepusht"
          Navigator.of(context).pop();
          sum = 0;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserMain()),
          );
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Yes'),
      ),
      new RaisedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('No'),
      ),
    ],
  );
}
