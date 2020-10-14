import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showpassword = true;
  final _key = new GlobalKey<FormState>();
  String username, password;

  check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      login();
    }
  }

  login() async {
    final response = await http.post("http://10.0.2.2/flutter/login.php",
        body: {"username": username, "password": password});
    final data = jsonDecode(response.body);
    int value = data['value'];
    String pesan = data['message'];
    // String usernameAPI = data['username'];
    // String namaAPI = data['nama'];
    // String id = data['id'];
    if (value == 1) {
      Navigator.pushNamed(context, '/location');
      print(pesan);
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('LOGIN GAGAL'),
          content: Text(pesan),
          actions: [
            FlatButton(
              child: Text('close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  _showpass() {
    setState(() {
      showpassword = !showpassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Form(
        key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //buat colomn
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage("assets/img/logo.png"),
                  width: 200,
                  height: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0),
              ),
              Text(
                "Aplikasi Mobile AMC",
                style: TextStyle(
                  color: Color(0xFF001048),
                  fontSize: 16.0,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20.0)
              ),
              Container(
                // width: 200,
                // height: 100,
                child: TextFormField(
                  validator: (e) {
                    if (e.isEmpty) {
                      return "Please insert username";
                    }
                  },
                  onSaved: (e) => username = e,
                  decoration: InputDecoration(
                    hintText: "Username",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            // color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20.0)
              ),
              Container(
                // width: 200,
                // height: 100,
                child: TextFormField(
                  validator: (p) {
                    if (p.isEmpty) {
                      return "Please insert password";
                    }
                  },
                  obscureText: showpassword,
                  onSaved: (p) => password = p,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        _showpass();
                      },
                      icon: Icon(
                          showpassword ? Icons.visibility_off : Icons.visibility),
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
              Padding(
                  padding: EdgeInsets.only(top: 20.0)
              ),
              Container(
                child: RaisedButton(
                  color: Color(0xFF001048),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    width: double.infinity,
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    check();
                  },
                  // child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
