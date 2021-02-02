import 'package:cantify/screens/manager/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../main.dart';
import 'dish.dart';

import 'menu2.dart';





class HomeScreen3 extends StatefulWidget {
  @override
  _HomeScreen3tate createState() => _HomeScreen3tate();
}

class _HomeScreen3tate extends State<HomeScreen3>{
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
          title: Text("MANAGER",style: GoogleFonts.adventPro()),
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
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Dish()),)
                                  },
                                  child: Center(
                                    child: Text(
                                      'Add to menu',
                                      style: GoogleFonts.acme(
                                          textStyle: TextStyle(
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


                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>MyMenuPage2(),),);

                                    //vigator.push(context,MaterialPageRoute(builder: (context)=>()),);


                                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>MyMenuPage2(),),);

                                    //vigator.push(context,MaterialPageRoute(builder: (context)=>()),);

                                  },
                                  child: Center(
                                    child: Text(
                                      'View Existing Menu',
                                      style: GoogleFonts.acme(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                            fontSize:25.0,
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            /*SizedBox(
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
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>apos2()),);

                        },
                        child: Center(
                          child: Text(
                            'View Orders',
                            style: GoogleFonts.acme(
                          textStyle:TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize:25.0,
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),*/

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