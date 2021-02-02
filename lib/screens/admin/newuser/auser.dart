import 'package:cantify/models/admin.dart';
import 'package:cantify/screens/admin/adminlogin.dart';
import 'package:cantify/screens/admin/home2.dart';
import 'package:flutter/material.dart';
import "package:cantify/models/user.dart";
import 'package:cantify/data/database_helper.dart';
import 'package:google_fonts/google_fonts.dart';



class ARegisterPage extends StatefulWidget {
  @override
  _ARegisterPageState createState() => new _ARegisterPageState();
}
class _ARegisterPageState extends State<ARegisterPage> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _name, _username, _password, _dept, _hords, _email;
  int number;

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: _submit,
      child: new Text("Submit"),
      color: Colors.orange,
    );

    var loginForm = SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //new Text(
          // "Welcome !!",
          // textScaleFactor: 2.0,
          //),
          new Form(
            key: formKey,
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    keyboardType: TextInputType.text,
                    onSaved: (val) => _name = val,
                    decoration: new InputDecoration(labelText: "NAME"),
                    validator: (String _name) {
                      if (_name.isEmpty)
                        return 'Enter your name';
                      else
                        return null;
                    },
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    onSaved: (val) => _username = val,
                    decoration: new InputDecoration(labelText: "USERNAME"),
                    validator: (String _username) {
                      if (_username.isEmpty)
                        return 'Enter your username';
                      else
                        return null;
                    },
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    onSaved: (val) => _password = val,
                    decoration: new InputDecoration(labelText: "PASSWORD"),
                    validator: (String _password) {
                      if (_password.length != 8 )
                        return 'Password length should be 8';
                      else
                        return null;
                    },
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    keyboardType: TextInputType.text,
                    onSaved: (val) => _dept = val,
                    decoration: new InputDecoration(labelText: "DEPARTMENT"),
                    validator: (String _dept) {
                      if (_dept.isEmpty)
                        return 'Please enter your department';
                      else
                        return null;
                    },
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    keyboardType: TextInputType.text,
                    onSaved: (val) => _hords = val,
                    decoration: new InputDecoration(labelText: "HOSTLER/DAYSCHOLAR"),
                    validator: (String _hords) {
                      if (_hords.isEmpty)
                        return 'Are you a hostler or a day-scholar?';
                      else
                        return null;
                    },
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    keyboardType: TextInputType.text,
                    onSaved: (val) => _email = val,
                    decoration: new InputDecoration(labelText: "EMAIL"),
                    validator: (String _email) {
                      if (_email.isEmpty)
                        return 'Invalid email';
                      else
                        return null;
                    },
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    keyboardType: TextInputType.number,
                    onSaved: (val) => number = int.parse(val),
                    decoration: new InputDecoration(labelText: "PHONE NUMBER"),
                    validator: (String number) {
                      if (number.length != 10)
                        return 'Invalid mobile number';
                      else
                        return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          loginBtn
        ],
      ),
    );

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: new Text("ADMIN",style: GoogleFonts.aclonica(),),
      ),
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var admin = new Admin(_name, _username, _password, _dept, _hords, _email, number, null);
        var db = new DatabaseHelper();
        db.saveAdmin(admin);
        _isLoading = false;
        Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen2()),);
        if (formKey.currentState.validate()) {}
      });
    }
  }
}