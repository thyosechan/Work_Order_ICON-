import 'package:flutter/material.dart';
import 'package:woicon/work_order/work_order.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    _showpass() {
      setState(() {
        showpassword = !showpassword;
      });
    }

    ;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //buat colomn
          children: [
            Container(
              child: Image(
                image: AssetImage("assets/img/logo.png"),
                width: 200,
                height: 100,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 200,
              height: 100,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          // color: Colors.black,
                          ),
                      borderRadius: BorderRadius.circular(5)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              child: TextFormField(
                obscureText: showpassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      _showpass();
                    },
                    icon: Icon(
                        showpassword ? Icons.visibility : Icons.visibility_off),
                  ),
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          // color: Colors.black,
                          ),
                      borderRadius: BorderRadius.circular(5)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, WorkOrder.routeName);
                },
                child: Text("Login"),
              ),
            )
            // InkWell(
            //   // onTap: () {
            //   //   Navigator.pushNamed(context, WorkOrder.routeName);
            //   // },
            //   onLongPress:  () {
            //     Navigator.pushNamed(context, WorkOrder.routeName);
            //   },
            //   child: Container(
            //     alignment: Alignment.center,
            //     child: Text("Login"),
            //     width: 200,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.amber,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
