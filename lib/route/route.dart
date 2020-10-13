import 'package:flutter/material.dart';
import 'package:woicon/login/login.dart';
import 'package:woicon/work_order/work_order.dart';

mixin RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Login.routeName:
        return MaterialPageRoute(
            settings: RouteSettings(name: Login.routeName),
            builder: (_) => Login());
      case WorkOrder.routeName:
        return MaterialPageRoute(
            settings: RouteSettings(name: WorkOrder.routeName),
            builder: (_) => WorkOrder());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
