import 'package:cantify/data/database_helper.dart';
import 'package:cantify/models/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
//void main() {
// runApp(testApp());
//}

class apos extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: APosPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}





class APosPage extends StatefulWidget {
  @override
  _APosState createState() => _APosState();
}
class _APosState extends State<APosPage> {

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<User> userList;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    if (userList == null) {
      userList = List<User>();
      updateListView();
    }

    return Scaffold(
      appBar: AppBar(
        title:Text("USER DETAILS",style: GoogleFonts.abel()),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: getUserListView(),
    );}

  ListView getUserListView() {

    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(

        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          //Text("USER DETAILS",textScaleFactor: 2,style: GoogleFonts.aladin(textStyle: TextStyle(fontFamily: 'Montserrat',
           // fontSize: 30.0,
           // fontWeight: FontWeight.bold,
            //color: Colors.black,)));
      return Card(
          color: Colors.white,
          elevation: 6.0,

          child: ListTile(


    title: Text(this.userList[position].name,style: GoogleFonts.aladin(textStyle: TextStyle(fontFamily: 'Montserrat',
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      color: Colors.orange,))),

    subtitle: Text(this.userList[position].email,style: GoogleFonts.aladin(textStyle: TextStyle(fontFamily: 'Montserrat',
      fontSize: 20.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,)),


        /*trailing: GestureDetector(
          child: Icon(Icons.delete, color: Colors.grey,),
          onTap: () {
            _delete(context, userList[position]);
          },
        ),
           onTap: () {
              debugPrint("User Tapped");
              navigateToDetail(this.userList[position],'Edit Detail');
            },*/

          )));

        },
    );
  }
  /*void _delete(BuildContext context, User user) async {

    int res = await databaseHelper.deleteUser(user.id);
    if (res != 0) {
      _showSnackBar(context, 'User Deleted Successfully');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message) {

    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }*/
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

      Future<List<User>> userListFuture = databaseHelper.getUserList();
      userListFuture.then((userList) {
        setState(() {
          this.userList = userList;
          this.count = userList.length;
        });
      });
    });
  }
}
