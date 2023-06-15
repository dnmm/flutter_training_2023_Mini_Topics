import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  const TableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const  Text("Table Screen"),
        ),
        body: Center(
            child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(100.0),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(100.0)
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(children: <Widget>[
              TableCell(
                child: Container(
                  padding:const  EdgeInsets.all(8.0),
                  color: Colors.grey[300],
                  child: const Text("Item 1"),
                ),
              ),
              TableCell(
                child: Container(
                  padding:const  EdgeInsets.all(8.0),
                  color: Colors.grey[300],
                  child:const  Text("Value 1"),
                ),
              ),
              TableCell(
                child: Container(
                  padding:const  EdgeInsets.all(8.0),
                  color: Colors.grey[300],
                  child:const  Text("Action 1"),
                ),
              )
            ]),
            TableRow(children: <Widget>[
              TableCell(
                child: Container(
                  padding:const  EdgeInsets.all(8.0),
                  color: Colors.grey[300],
                  child:const  Text("Item 2"),
                ),
              ),
              TableCell(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.grey[300],
                  child: const Text("Value 2"),
                ),
              ),
              TableCell(
                child: Container(
                  padding:const EdgeInsets.all(8.0),
                  color: Colors.grey[300],
                  child:const  Text("Action 2"),
                ),
              )
            ])
          ],
        )));
  }
}
