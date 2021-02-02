import 'package:cantify/data/database_helper.dart';
import 'package:cantify/models/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home3.dart';

void main() {
  runApp(MaterialApp( home: MyMenuPage2(),
   // debugShowCheckedModeBanner: ,
    )
  );
}

class MyMenuPage2 extends StatefulWidget {
  @override
  _MenuPage2State createState() => _MenuPage2State();
}

class _MenuPage2State extends State<MyMenuPage2> {
 /* bool valuefirst = false;
  bool valuesecond = false;
  //bool valuesthird = false;
  bool valuefourth = false;
  bool valuefifth = false;
  bool valuesix = false;
  bool valueseven = false;*/
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Menu> menuList;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (menuList == null) {
      menuList = List<Menu>();
      updateListView();
    }
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.orange ,title:Text("TODAY'S MENU",style: GoogleFonts.abel()),

            centerTitle: true,
          ),
    body: getMenuListView(),
    //floatingActionButton: FloatingActionButton(
    //child: Icon(Icons.delete, color: Colors.orangeAccent,),
    //onPressed: () {
    // ignore: unnecessary_statements
    //_delete(context, menuList[position]);
    //}
    ));
    }

  ListView getMenuListView() {

    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
  return ListView.builder(

  itemCount: count,
  itemBuilder: (BuildContext context, int position) {

    String dname=this.menuList[position].dishname;
    int rate=this.menuList[position].rate;
  //Text("USER DETAILS",textScaleFactor: 2,style: GoogleFonts.aladin(textStyle: TextStyle(fontFamily: 'Montserrat',
  // fontSize: 30.0,
  // fontWeight: FontWeight.bold,
  //color: Colors.black,)));
  return Card(
  color: Colors.white,
  elevation: 6.0,

  child: ListTile(


  title: Text('$dname - $rate Rs',style: GoogleFonts.aladin(textStyle: TextStyle(fontFamily: 'Montserrat',
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.orange,))),

  //subtitle: Text('$rate',style: GoogleFonts.aladin(textStyle: TextStyle(fontFamily: 'Montserrat',
  //fontSize: 20.0,
  //fontWeight: FontWeight.w300,
  //color: Colors.black,)),


  trailing: GestureDetector(
          child: Icon(Icons.delete, color: Colors.grey,),
          onTap: () {
            _delete(context, menuList[position]);
          },
        ),
           //onTap: () {
            // debugPrint("Delete Menu");
           //  _delete(context, menuList[position]);
          // }


  ));

  },
  );
}
void _delete(BuildContext context, Menu menu) async {

    int res = await databaseHelper.deleteMenu(menu.dishid);
    if (res != 0) {
      _showSnackBar(context, 'Menu Deleted Successfully');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message) {

    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }
/*void navigateToDetail(User user, String name) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return UserDetail(user,name);
    }));

    if (result == true) {
      updateListView();
    }
  }*/
void updateListView() {

  final Future<dynamic> dbFuture = databaseHelper.initDb();
  dbFuture.then((db) {

    Future<List<Menu>> menuListFuture = databaseHelper.getMenuList();
    menuListFuture.then((menuList) {
      setState(() {
        this.menuList = menuList;
        this.count = menuList.length;
      });
    });
  });
}
}