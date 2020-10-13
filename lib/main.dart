import 'package:flutter/material.dart';
import 'package:woicon/login/login.dart';
import 'package:woicon/work_order/work_order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WO ICON+',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Login(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => WorkOrder()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
