import 'package:cantify/models/user.dart';
import 'package:cantify/forgotpsw.dart';
import 'package:cantify/screens/user/ulogin_presenter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class LoginPage2 extends StatefulWidget {
  @override
  _LoginPage2State createState() => new _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> implements LoginPageContract {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _username, _password;

  LoginPagePresenter _presenter;

  _LoginPage2State() {
    _presenter = new LoginPagePresenter(this);
  }

  //void _register() {
  //  Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterPage()),);
  // }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_username, _password);
      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: _submit,
      child: new Text("Login"),
      color: Colors.orangeAccent,
    );
    // var registerBtn = new RaisedButton(
    // padding: const EdgeInsets.all(10.0),
    // onPressed: _register,
    // child: new Text("Register"),
    // color: Colors.orangeAccent,
    // );
    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
            '\nUser Login',
            style: GoogleFonts.acme(
              textStyle:TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            )),
        new Text(
            "\n'A simple way to find your tasty food!'",
            textScaleFactor: 2.0,
            style: GoogleFonts.aguafinaScript(
                textStyle:TextStyle(
                    color: Colors.black,
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 15
                ))),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _username = val,
                  decoration: new InputDecoration(labelText: "Username"),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  obscureText: true,
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password"),
                ),
              )
            ],
          ),
        ),
        //FlatButton(
        //onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => SecondRoute()),
        //);
        //forgot password screentt
        // },
        // textColor: Colors.brown,
        // child: Text('Forgot Password?'),
        // ),
        new Padding(
            padding: const EdgeInsets.all(15.0),
            child: loginBtn),

        //registerBtn
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text("Cantify",style: GoogleFonts.abel()),
      ),
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }

  void onLoginSuccess(User user) async {
    // TODO: implement onLoginSuccess
    if (user.username == "") {
      _showSnackBar("Login not successful");
    } else {
      _showSnackBar(user.toString());
    }
    setState(() {
      _isLoading = false;
    });
    if (user.flaglogged == "logged") {
      print("Logged");
      Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()),);
    } else {
      print("Not Logged");
    }
  }
}