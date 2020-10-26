import 'package:flutter/material.dart';

class FormWo extends StatefulWidget {
  static const routeName = '/form';
  @override
  _FormWoState createState() => _FormWoState();
}

class _FormWoState extends State<FormWo> {
  String dropdownUnit = 'Unit 1';
  String dropdownLoct = 'lokasi 1';
  String dropdownEq = 'Equipment 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulir Cek List Baterai(Bulanan)'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Unit', style: TextStyle(fontSize: 25, height: 2)),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton(
                    icon: Icon(Icons.arrow_downward),
                    isExpanded: true,
                    value: dropdownUnit,
                    underline: Container(
                      height: 2,
                      color: Colors.blue[300],
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownUnit = newValue;
                      });
                    },
                    items: <String>['Unit 1', 'Unit 2', 'Unit 3', 'Unit 4']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Lokasi', style: TextStyle(fontSize: 25, height: 2)),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton(
                    icon: Icon(Icons.arrow_downward),
                    isExpanded: true,
                    value: dropdownLoct,
                    underline: Container(
                      height: 2,
                      color: Colors.blue[300],
                    ),
                    onChanged: (String newValue2) {
                      setState(() {
                        dropdownLoct = newValue2;
                      });
                    },
                    items: <String>[
                      'lokasi 1',
                      'lokasi 2',
                      'lokasi 3',
                      'lokasi 4'
                    ].map<DropdownMenuItem<String>>((String value2) {
                      return DropdownMenuItem<String>(
                        value: value2,
                        child: Text(value2),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Equipment*', style: TextStyle(fontSize: 15, height: 2)),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton(
                    icon: Icon(Icons.arrow_downward),
                    isExpanded: true,
                    value: dropdownEq,
                    underline: Container(
                      height: 2,
                      color: Colors.blue[300],
                    ),
                    onChanged: (String newValue3) {
                      setState(() {
                        dropdownEq = newValue3;
                      });
                    },
                    items: <String>[
                      'Equipment 1',
                      'Equipment 2',
                      'Equipment 3',
                      'Equipment 4'
                    ].map<DropdownMenuItem<String>>((String value3) {
                      return DropdownMenuItem<String>(
                        value: value3,
                        child: Text(value3),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Merk',
                    style: TextStyle(
                      fontSize: 25,
                    )),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Masukan Merknya'),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Type', style: TextStyle(fontSize: 25, height: 2)),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Masukan Type'),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Tanggal \n Inspeksi  ',
                    style: TextStyle(fontSize: 14, height: 2)),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 300,
                  height: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Masukan Tgl Inspeksi'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
