// Imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

import 'package:nobbystore_finance/User/user_main.dart';
import 'package:nobbystore_finance/User/Sell/lists.dart';
import 'package:nobbystore_finance/User/Sell/sell_bag.dart';

class SellList extends StatefulWidget {
  @override
  _SellListState createState() => _SellListState();
}

class _SellListState extends State<SellList> {
  void addList(item) {
    if (item[1] == 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) => _buildPopupDialog2(context),
      );
    } else {
      bag.add(item);
      // Summe erhöhen
      if (sum == null) {
        sum = item[2];
      } else {
        sum = sum + item[2];
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SellBag()),
      );
    }
  }

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: DataTable(columns: [
            DataColumn(label: Text("Produkt-Name")),
            DataColumn(label: Text("Lagerbetsand")),
            DataColumn(label: Text("Preis in €")),
            DataColumn(label: Text("")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text(liste[0][0])),
              DataCell(Text(liste[0][1].toString())),
              DataCell(Text(liste[0][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[0]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[1][0])),
              DataCell(Text(liste[1][1].toString())),
              DataCell(Text(liste[1][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[1]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[2][0])),
              DataCell(Text(liste[2][1].toString())),
              DataCell(Text(liste[2][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[2]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[3][0])),
              DataCell(Text(liste[3][1].toString())),
              DataCell(Text(liste[3][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[3]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[4][0])),
              DataCell(Text(liste[4][1].toString())),
              DataCell(Text(liste[4][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[4]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[5][0])),
              DataCell(Text(liste[5][1].toString())),
              DataCell(Text(liste[5][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[5]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[6][0])),
              DataCell(Text(liste[6][1].toString())),
              DataCell(Text(liste[6][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[6]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[7][0])),
              DataCell(Text(liste[7][1].toString())),
              DataCell(Text(liste[7][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[7]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[8][0])),
              DataCell(Text(liste[8][1].toString())),
              DataCell(Text(liste[8][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[8]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[9][0])),
              DataCell(Text(liste[9][1].toString())),
              DataCell(Text(liste[9][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[4]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[10][0])),
              DataCell(Text(liste[10][1].toString())),
              DataCell(Text(liste[10][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[10]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[11][0])),
              DataCell(Text(liste[11][1].toString())),
              DataCell(Text(liste[11][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[11]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[12][0])),
              DataCell(Text(liste[12][1].toString())),
              DataCell(Text(liste[12][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[12]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[13][0])),
              DataCell(Text(liste[13][1].toString())),
              DataCell(Text(liste[13][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[13]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[14][0])),
              DataCell(Text(liste[14][1].toString())),
              DataCell(Text(liste[14][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[14]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[15][0])),
              DataCell(Text(liste[15][1].toString())),
              DataCell(Text(liste[15][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[15]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[16][0])),
              DataCell(Text(liste[16][1].toString())),
              DataCell(Text(liste[16][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[16]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[17][0])),
              DataCell(Text(liste[17][1].toString())),
              DataCell(Text(liste[17][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[17]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[18][0])),
              DataCell(Text(liste[18][1].toString())),
              DataCell(Text(liste[18][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[18]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[19][0])),
              DataCell(Text(liste[19][1].toString())),
              DataCell(Text(liste[19][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[19]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[20][0])),
              DataCell(Text(liste[20][1].toString())),
              DataCell(Text(liste[20][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[20]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[21][0])),
              DataCell(Text(liste[21][1].toString())),
              DataCell(Text(liste[21][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[21]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[22][0])),
              DataCell(Text(liste[22][1].toString())),
              DataCell(Text(liste[22][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[22]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[23][0])),
              DataCell(Text(liste[23][1].toString())),
              DataCell(Text(liste[23][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[23]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[24][0])),
              DataCell(Text(liste[24][1].toString())),
              DataCell(Text(liste[24][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[24]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[25][0])),
              DataCell(Text(liste[25][1].toString())),
              DataCell(Text(liste[25][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[25]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[26][0])),
              DataCell(Text(liste[26][1].toString())),
              DataCell(Text(liste[26][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[26]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[27][0])),
              DataCell(Text(liste[27][1].toString())),
              DataCell(Text(liste[27][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[27]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[28][0])),
              DataCell(Text(liste[28][1].toString())),
              DataCell(Text(liste[28][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[28]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[29][0])),
              DataCell(Text(liste[29][1].toString())),
              DataCell(Text(liste[29][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[29]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[30][0])),
              DataCell(Text(liste[30][1].toString())),
              DataCell(Text(liste[30][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[30]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[31][0])),
              DataCell(Text(liste[31][1].toString())),
              DataCell(Text(liste[31][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[31]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[32][0])),
              DataCell(Text(liste[32][1].toString())),
              DataCell(Text(liste[32][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[32]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[33][0])),
              DataCell(Text(liste[33][1].toString())),
              DataCell(Text(liste[33][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[33]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[34][0])),
              DataCell(Text(liste[34][1].toString())),
              DataCell(Text(liste[34][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[34]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[35][0])),
              DataCell(Text(liste[35][1].toString())),
              DataCell(Text(liste[35][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[35]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[36][0])),
              DataCell(Text(liste[36][1].toString())),
              DataCell(Text(liste[36][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[36]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[37][0])),
              DataCell(Text(liste[37][1].toString())),
              DataCell(Text(liste[37][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[37]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[38][0])),
              DataCell(Text(liste[38][1].toString())),
              DataCell(Text(liste[38][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[38]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[39][0])),
              DataCell(Text(liste[39][1].toString())),
              DataCell(Text(liste[39][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[39]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[40][0])),
              DataCell(Text(liste[40][1].toString())),
              DataCell(Text(liste[40][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[40]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[41][0])),
              DataCell(Text(liste[41][1].toString())),
              DataCell(Text(liste[41][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[41]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[42][0])),
              DataCell(Text(liste[42][1].toString())),
              DataCell(Text(liste[42][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[42]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[43][0])),
              DataCell(Text(liste[43][1].toString())),
              DataCell(Text(liste[43][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[43]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[44][0])),
              DataCell(Text(liste[44][1].toString())),
              DataCell(Text(liste[44][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[44]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[45][0])),
              DataCell(Text(liste[45][1].toString())),
              DataCell(Text(liste[45][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[45]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[46][0])),
              DataCell(Text(liste[46][1].toString())),
              DataCell(Text(liste[46][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[46]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[47][0])),
              DataCell(Text(liste[47][1].toString())),
              DataCell(Text(liste[47][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[47]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[48][0])),
              DataCell(Text(liste[48][1].toString())),
              DataCell(Text(liste[48][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[48]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[49][0])),
              DataCell(Text(liste[49][1].toString())),
              DataCell(Text(liste[49][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[49]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[50][0])),
              DataCell(Text(liste[50][1].toString())),
              DataCell(Text(liste[50][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[50]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[51][0])),
              DataCell(Text(liste[51][1].toString())),
              DataCell(Text(liste[51][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[51]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[52][0])),
              DataCell(Text(liste[52][1].toString())),
              DataCell(Text(liste[52][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[52]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[53][0])),
              DataCell(Text(liste[53][1].toString())),
              DataCell(Text(liste[53][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[53]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[54][0])),
              DataCell(Text(liste[54][1].toString())),
              DataCell(Text(liste[54][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[4]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
            DataRow(cells: [
              DataCell(Text(liste[55][0])),
              DataCell(Text(liste[55][1].toString())),
              DataCell(Text(liste[55][2].toString())),
              DataCell(
                RaisedButton(
                  onPressed: () {
                    addList(liste[55]);
                  },
                  textColor: Colors.green[800],
                  color: Colors.green[300],
                  child: const Text('Buy'),
                ),
              ),
            ]),
          ]),
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

// Popup Dialog2
Widget _buildPopupDialog2(BuildContext context) {
  return new AlertDialog(
    title: const Text('Warning'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Dieses Produkt ist ausverkauft!"),
      ],
    ),
    actions: <Widget>[
      new RaisedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Ok'),
      ),
    ],
  );
}
