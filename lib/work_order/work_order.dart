import 'package:flutter/material.dart';

class WorkOrder extends StatefulWidget {
  static const routeName = '/work';
  @override
  _WorkOrderState createState() => _WorkOrderState();
}

class _WorkOrderState extends State<WorkOrder> {
  // List<Widget> widgetku = [];

  // int counter = 1;

  // cara 3: dengan perulangan
  // MyAppState() {
  //   for (int i = 0; i < 15; i++) {
  //     widgetku.add(Text(
  //       "List nomer : " + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Order'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Form'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/form');
          },
        ),
      ),
    );
  }
}

// class _PageList extends StatefulWidget {
//   @override
//   _PageListState createState() => _PageListState();
// }

// class _PageListState extends State<_PageList> {
//   List<String> languages = [
//     "Dart",
//     "Kotlin",
//     "Java",
//     "PHP",
//     "Swift",
//     "Javascript",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[300],
//       child: ListView.builder(
//         itemCount: languages.length,
//         itemBuilder: (BuildContext context, int index) {
//           final number = index + 1;
//           final language = languages[index].toString();
//           return Card(
//             child: ListTile(
//               leading: Text(number.toString()),
//               title: Text(language),
//               trailing: Icon(Icons.check),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class Buttonform extends StatefulWidget {
//   @override
//   _ButtonformState createState() => _ButtonformState();
// }

// class _ButtonformState extends State<Buttonform> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RaisedButton(
//         onPressed: () {
//           Navigator.pushNamed(context, '/form');
//         },
//         child: Text("test form"),
//       ),
//     );
//   }
// }
