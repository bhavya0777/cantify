import 'package:cantify/screens/admin/adminlogin.dart';
import 'package:cantify/screens/admin/home2.dart';
import 'package:cantify/screens/admin/newuser/user.dart';
import 'package:flutter/material.dart';
import 'package:cantify/models/user.dart';
import 'package:cantify/data/database_helper.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auser.dart';
import 'muser.dart';



class MainScreen1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainScreen1> {
  @override
  MainScreen1 createState() => MainScreen1();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Cantify",style: GoogleFonts.abel()),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(40),
                child: Text(
                  '\n\nAdd New User',
                  style: GoogleFonts.acme(textStyle:TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 40)),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child: Text('USER', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()),);
                    },
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child: Text('ADMIN', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ARegisterPage()),
                      );
                    },
                  )),
              Container(
                  padding: EdgeInsets.only(top: 20.0, left: 60.0, right: 60.0),
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.orange,
                    child:
                    Text('CANTEEN MANAGER', style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MRegisterPage()),
                      );
                    },
                  )),
            ],
          )),
    );
  }
}
