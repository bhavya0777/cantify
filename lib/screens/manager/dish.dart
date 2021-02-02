import 'package:cantify/screens/manager/home3.dart';
import 'package:flutter/material.dart';
import 'package:cantify/data/database_helper.dart';
import 'package:cantify/models/menu.dart';

class Dish extends StatefulWidget {
  @override
  _DishState createState() => new _DishState();
}

class _DishState extends State<Dish> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String dishname;
  int rate;
  //TextEditingController dnameController = TextEditingController();
  //TextEditingController rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var addBtn = new RaisedButton(
      onPressed: _add,
      child: new Text("Add Dish"),
      color: Colors.orange,
    );

    var dishForm = SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Form(
            key: formKey,
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.all(10),
                  //child: ListView(
                  //children: <Widget>[
                  //Container(
                  //padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                  //child: Column(
                  //children: <Widget>[
                  //new Padding(
                  //padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    keyboardType: TextInputType.text,
                    onSaved: (val) => dishname = val,
                    decoration: InputDecoration(
                        labelText: ' DISH NAME',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.orangeAccent))),
                    validator: (String dishname) {
                      if (dishname.isEmpty)
                        return 'Enter the dishname';
                      else
                        return null;
                    },
                  ),
                ),
                //SizedBox(height: 10.0),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                      keyboardType: TextInputType.number,
                      onSaved: (val) => rate = int.parse(val),
                      decoration: InputDecoration(
                          labelText: 'RATE',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.orangeAccent))),
                      validator: (val) {
                        if (val.isEmpty)
                          return "Enter the rate";
                        else
                          return null;
                      }),
                ),


              ],
            ),
          ),
          addBtn
        ],
      ),
    );


    return new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: Text("Add dish"),
        ),
        key: scaffoldKey,
        body: new Container(
            child: new Center(
              child: dishForm,
            )));
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _add() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var menu1 = new Menu(dishname, rate);
        var db = new DatabaseHelper();
        db.saveMenu(menu1);
        _isLoading = false;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen3()),
        );
        if (formKey.currentState.validate()) {}
      });
    }
  }
}