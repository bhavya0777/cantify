import 'package:cantify/forgotpsw.dart';

import 'package:cantify/screens/admin/view.dart';
import 'package:cantify/screens/admin/newuser/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';


class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  BuildContext _ctx;

  //void profile() {
  //Navigator.of(context).pushNamed("/profile");
  //}
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange ,
          title: Text("ADMIN",style: GoogleFonts.adventPro()),
        ),
        body:Container(
            child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 28.0,
                      vertical: 100.0,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('C',
                                    style: GoogleFonts.aclonica(
                                      textStyle:TextStyle(fontFamily: 'Montserrat',
                                        fontSize: 45.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      ),
                                    )),Text('ANTIF',
                                  style:GoogleFonts.aclonica(
                                      textStyle: TextStyle(fontFamily: 'Montserrat',
                                        fontSize: 45.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )),
                                ),
                                Text('Y',
                                  style: GoogleFonts.aclonica(
                                      textStyle:TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 45.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      )),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 80,
                            ),
                            //Container(
                            // width: double.infinity,
                            // decoration: BoxDecoration(
                            //  image: DecorationImage(
                            //   image: AssetImage("assets/images2.jpg"),
                            //  fit: BoxFit.cover),
                            // ),
                            // ),
                            Container(
                              height: 50.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(25.0),
                                shadowColor: Colors.orangeAccent,
                                color: Colors.orangeAccent,
                                elevation: 10.0,
                                child: InkWell(
                                  onTap: () =>
                                  {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>apos()),),
                                  },
                                  child: Center(
                                    child: Text(
                                      'View User Info',
                                      style: GoogleFonts.acme(
                                          textStyle:TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            fontSize: 25.0,
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Container(
                              height: 50.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(25.0),
                                shadowColor: Colors.orangeAccent,
                                color: Colors.orangeAccent,
                                elevation: 10.0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen1()),);

                                  },
                                  child: Center(
                                    child: Text(
                                        'Add New User',
                                        style: GoogleFonts.acme(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            fontSize:25.0,
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),

                            SizedBox(
                              height: 50.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                              alignment: Alignment.center,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              RaisedButton(
                                                  onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()),);
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(80.0)),
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Ink(
                                                      decoration: const BoxDecoration(
                                                        //gradient: redGradient,
                                                        color: Colors.orangeAccent,
                                                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                                      ),
                                                      child: Container(
                                                          constraints: const BoxConstraints(
                                                              minWidth: 80.0,
                                                              minHeight: 40.0), // min sizes for Material buttons
                                                          alignment: Alignment.center,
                                                          child:  Text(
                                                              'Signout',
                                                              style: GoogleFonts.itim(
                                                                  textStyle: TextStyle(
                                                                      fontSize: 20.0,
                                                                      color: Colors.white,
                                                                      fontWeight: FontWeight.bold)

                                                              )))))],
                                          ),
                                        ]),

                                  ]),
                            ),
                          ]),

                    )))));
  }
}