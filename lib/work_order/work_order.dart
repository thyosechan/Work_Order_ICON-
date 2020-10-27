import 'package:flutter/material.dart';
import 'package:woicon/nav_drawer.dart';

class WorkOrder extends StatefulWidget {
  static const routeName = '/work';
  @override
  _WorkOrderState createState() => _WorkOrderState();
}

class _WorkOrderState extends State<WorkOrder> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text("Daftar Pekerjaan"),
            leading: new IconButton(
              icon: new Icon(Icons.reorder_rounded),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.assignment_outlined),
                  text: "On Going",
                ),
                Tab(
                  icon: Icon(Icons.assignment_turned_in_outlined),
                  text: "Done",
                ),
              ],
            ),
          ),
          drawer: MenuDrawer(),
          body: TabBarView(
            children: [
              _PageList(),
              // Icon(Icons.directions_transit),
              RaisedButton(
                child: Text(
                  "Entri",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  // if (_formKey.currentState.validate()) {}
                  Navigator.pushNamed(context, '/location');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PageList extends StatefulWidget {
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<_PageList> {
  List<String> languages = [
    "Dart",
    "Kotlin",
    "Java",
    "PHP",
    "Swift",
    "Javascript",
    "css",
    "sql",
    "json",
    "xml",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (BuildContext context, int index) {
          final number = index + 1;
          final language = languages[index].toString();
          return Card(
            child: ListTile(
              leading: Text(number.toString()),
              title: Text(language),
              trailing: RaisedButton(
                child: Text(
                  "Entri",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  // if (_formKey.currentState.validate()) {}
                  Navigator.pushNamed(context, '/location');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
