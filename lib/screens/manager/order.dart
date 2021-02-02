import 'package:flutter/material.dart';
//void main() {
// runApp(testApp());
//}

class apos2 extends StatelessWidget {
  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Table',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("ORDER TABLE"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Date:01-12-2020",textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Table(

                // textDirection: TextDirection.rtl,
                // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                // border:TableBorder.all(width: 2.0,color: Colors.red),
                children: [
                  TableRow(
                      children: [
                        Text(" UNAME ",textScaleFactor: 1.5,),
                        Text("ITEMNO",textScaleFactor: 1.5),
                        Text("QTY",textScaleFactor: 1.5),
                        Text(" TOKENID ",textScaleFactor: 1.5),

                      ]
                  ),
                  TableRow(
                      children: [
                        Text("    ",textScaleFactor: 1.5,),
                        Text("   ",textScaleFactor: 1.5),
                        Text("  ",textScaleFactor: 1.5),
                        Text("  ",textScaleFactor: 1.5),

                      ]
                  ),
                  TableRow(
                      children: [
                        Text("SCM18CS9",textScaleFactor: 1.25),
                        Text("  3  ",textScaleFactor: 1.5),
                        Text("  1  ",textScaleFactor: 1.5),
                        Text("  1  ",textScaleFactor: 1.5),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("SCM16ES1",textScaleFactor: 1.25),
                        Text("  4  ",textScaleFactor: 1.5),
                        Text("  1  ",textScaleFactor: 1.5),
                        Text("  2  ",textScaleFactor: 1.5),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("SCM19CE1",textScaleFactor: 1.25),
                        Text("  2 ",textScaleFactor: 1.5),
                        Text("  4 ",textScaleFactor: 1.5),
                        Text("  3 ",textScaleFactor: 1.5),
                      ]
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}