import 'package:flutter/material.dart';

import 'main.dart';

class SecondRoute extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Forgot Password"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Text(
                  'RESET PASSWORD',
                  style: TextStyle(
                      color: Colors.orange,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent)),
                    labelText: 'Username',
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent)),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: TextField(
                  obscureText: true,
                  controller: confirmPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orangeAccent)),
                    labelText: ' Confirm Password',
                  ),
                ),
              ),
              //SizedBox(height: 30.0),
              Container(
                  padding: EdgeInsets.only(top: 25.0, left: 50.0, right: 50.0),
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.orange,
                    color: Colors.orange,
                    elevation: 7.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainScreen()),);
                      },
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )),
              //SizedBox(height: 30.0),
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
                height: 50.0,
                color: Colors.transparent,
                child: Material(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.orange,
                  elevation: 10.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),);
                    },
                    child: Center(
                      child: Text(
                        'BACK',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}