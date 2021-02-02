import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cantify/main.dart';


class token extends StatefulWidget {
  @override
  _tokenState createState() => _tokenState();
}


//final name="Sarah John";
//final dept='CSE';
//final role='User';
//final hords='Hostler';
//final email='sarah121@gmail.com';
//final mob ='9355477354';

const mainBgColor = Color(0xFFf2f2f2);
const darkColor = Color(0xFF2A0B35);
const midColor = Color(0xFF522349);
const lightColor = Color(0xFFA52C4A);
const darkRedColor = Color(0xFFFA641C);
const lightRedColor = Color(0xFFFC683A);
const orange = Color(0xFFFD684C);
const reGradient = LinearGradient(
  colors: <Color>[lightRedColor, orange,darkRedColor],
  stops: [0.0, 0.5, 1.0],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
//const USER_IMAGE='https://ssvassgje.in/upload/salon-profile-image/demo/profile.png';
const redGradient = LinearGradient(
  colors: <Color>[Colors.orange,lightRedColor, Colors.orange],
  stops: [1.0, 0.8, 1.0],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);


class _tokenState extends State<token> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    _backBgCover(),
                    _greetings()
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                // mainAxisAlignment: MainAxisAlignment.start,
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        _specialistsCardInfo1(),
                        _specialistsCardInfo2(),
                        _specialistsCardInfo4(),
                        //_specialistsCardInfo3(),
                        _specialistsCardInfo5(),
                        _specialistsCardInfo7(context),

                      ],
                    ),
                  ),
                ),

              ],
            )));
    //);
  }
  Container _backBgCover() {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        gradient: redGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }
  Positioned _greetings() {
    return Positioned(
      left: 20,
      bottom: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
  Widget _specialistsCardInfo1() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      //margin: EdgeInsets.only(
      //bottom: 20.0,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                width: 10.0,
              ),
              Column(
                //padding: const EdgeInsets.all(8.0)
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '   ORDERS PLACED   \n',
                      style: GoogleFonts.aclonica(
                          textStyle: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 30,
                            //style: TextStyle(fontWeight:FontWeight.bold)
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),
            ],
          ),
          //Icon(
          // LineAwesomeIcons.heart,
          //  color: lightColor,
          //  size: 36,
          //),
        ],
      ),
    );
  }

  Widget _specialistsCardInfo2() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '> Chicken Biriyani\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),
            ],
          ),
          //Icon(
          // LineAwesomeIcons.heart,
          //  color: lightColor,
          //  size: 36,
          //),
        ],
      ),
    );
  }
  Widget _specialistsCardInfo4() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 14.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '> Orange Juice\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),
            ],
          ),
          //Icon(
          // LineAwesomeIcons.heart,
          //  color: lightColor,
          //  size: 36,
          //),
        ],
      ),
    );
  }

  // Widget _specialistsCardInfo3() {
  // Padding(
  //   padding:EdgeInsets.symmetric(horizontal:10.0),
  //   child:Container(
  //     height:1.0,
  //    width:130.0,
  //     color:Colors.black,),
  //);

  // }


  Widget _specialistsCardInfo5() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 14.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '\nTOTAL\n',
                      style: GoogleFonts.acme(
                          textStyle: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          )),
                      children: <TextSpan>[
                        TextSpan(
                          text: '70.00 Rs.',
                          style: GoogleFonts.aclonica(
                              textStyle: TextStyle(
                                color: Colors.orange,
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),
            ],
          ),
          //Icon(
          // LineAwesomeIcons.heart,
          //  color: lightColor,
          //  size: 36,
          //),
        ],
      ),
    );
  }

  Widget _specialistsCardInfo7(BuildContext context) {
    return Container(
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
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //Icon(
          // LineAwesomeIcons.heart,
          //  color: lightColor,
          //  size: 36,
          //),
        ],
      ),
    );
  }
}