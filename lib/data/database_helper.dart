import 'dart:io';
import 'package:cantify/models/menu.dart';
import 'package:cantify/screens/user/profile.dart';
import 'package:cantify/models/user.dart';
import 'package:cantify/models/manager.dart';
import 'package:cantify/models/admin.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database _db;
  final String tableUser = "User";
  final String tableAdmin = "Admin";
  final String tableManager = "Manager";
  final String tableMenu = "Menu";
  final String columnUserName = "username";
  final String columnPassword = "password";
  final String columnAUserName = "ausername";
  final String columnAPassword = "apassword";
  final String columnMUserName = "musername";
  final String columnMPassword = "mpassword";
  final String columnDishname = "dishname";
  final String columnRate = "rate";

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "project3.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT, dept TEXT, hords TEXT,  email TEXT, number INTEGER,flaglogged TEXT)");
    print("Table is created");

    await db.execute(
        "CREATE TABLE Admin(aid INTEGER PRIMARY KEY, aname TEXT, ausername TEXT, apassword TEXT, adept TEXT, ahords TEXT,  aemail TEXT, anumber INTEGER,flaglogged TEXT)");
    print("Table is created");

    await db.execute(
        "CREATE TABLE Manager(mid INTEGER PRIMARY KEY, mname TEXT, musername TEXT, mpassword TEXT, mdept TEXT, mhords TEXT,  memail TEXT, mnumber INTEGER,flaglogged TEXT)");
    print("Table is created");


    await db.execute(
        "CREATE TABLE Menu(dishid INTEGER PRIMARY KEY, dishname TEXT, rate INTEGER)");
    print("Menu is created");
  }

  //Fetch Operation: Get all note objects from database
  Future<List<Map<String, dynamic>>> getUserMapList() async {
    var dbClient = await db;

    var res = await dbClient.rawQuery('SELECT * FROM User order by id ASC');
    //var res = await db.query("User", orderBy: 'id ASC');
    return res;
  }

  Future<int> updateUser(User user) async {
    var dbClient = await db;
    var res = await dbClient.update("User", user.toMap(), where: 'name = ?', whereArgs: [user.name]);
    return res;
  }

  //user insertion
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    print(user.name);
    int res = await dbClient.insert("User", user.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM User');
    print(list);
    return res;
  }

  //user deletion
  Future<int> deleteUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }

  Future<User> selectUser(User user) async {
    print("Select User");
    print(user.username);
    print(user.password);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableUser,
        columns: [columnUserName, columnPassword],
        where: "$columnUserName = ? and $columnPassword = ?",
        whereArgs: [user.username, user.password]);
    print(maps);
    if (maps.length > 0) {
      print("User Exist !!!");
      return user;
    } else {
      return null;
    }
  }

  // Get number of Note objects in database
  Future<int> getCount() async {
    var dbClient = await db;
    List<Map<String, dynamic>> x = await dbClient.rawQuery('SELECT COUNT (*) from User');
    int res = Sqflite.firstIntValue(x);
    return res;
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'Note List' [ List<Note> ]
  Future<List<User>> getUserList() async {

    var userMapList = await getUserMapList(); // Get 'Map List' from database
    int count = userMapList.length;         // Count the number of map entries in db table

    List<User> userList = List<User>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      userList.add(User.fromMapObject(userMapList[i]));
    }

    return userList;
  }
  //admin insertion
  Future<int> saveAdmin(Admin admin) async {
    var dbClient = await db;
    print(admin.aname);
    int res = await dbClient.insert("Admin", admin.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Admin');
    print(list);
    return res;
  }

  //admin deletion
  Future<int> deleteAdmin(Admin admin) async {
    var dbClient = await db;
    int res = await dbClient.delete("Admin");
    return res;
  }

  Future<Admin> selectAdmin(Admin admin) async {
    print("Select Admin");
    print(admin.ausername);
    print(admin.apassword);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableAdmin,
        columns: [columnAUserName, columnAPassword],
        where: "$columnAUserName = ? and $columnAPassword = ?",
        whereArgs: [admin.ausername, admin.apassword]);
    print(maps);
    if (maps.length > 0) {
      print("Admin Exist !!!");
      return admin;
    } else {
      return null;
    }
  }

  //insertion
  Future<int> saveManager(Manager manager) async {
    var dbClient = await db;
    print(manager.mname);
    int res = await dbClient.insert("Manager", manager.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Manager');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteManager(Manager manager) async {
    var dbClient = await db;
    int res = await dbClient.delete("Manager");
    return res;
  }

  Future<Manager> selectManager(Manager manager) async {
    print("Select Manager");
    print(manager.musername);
    print(manager.mpassword);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableManager,
        columns: [columnMUserName, columnMPassword],
        where: "$columnMUserName = ? and $columnMPassword = ?",
        whereArgs: [manager.musername, manager.mpassword]);
    print(maps);
    if (maps.length > 0) {
      print("Manager Exist !!!");
      return manager;
    } else {
      return null;
    }
  }
  Future<List<Map<String, dynamic>>> getMenuMapList() async {
    var dbClient = await db;

    var res = await dbClient.rawQuery('SELECT * FROM Menu ');
    //var res = await db.query("User", orderBy: 'id ASC');
    return res;
  }

  Future<int> updateMenu(Menu menu) async {
    var dbClient = await db;
    var res = await dbClient.update("Menu", menu.toMap(), where: 'dishname = ?', whereArgs: [menu.dishname]);
    return res;
  }
  //menu table
  //insertion
  Future<int> saveMenu(Menu menuitem) async {
    var dbClient1 = await db;
    print(menuitem.dishname);
    print(tableMenu);
    int res = await dbClient1.insert("Menu", menuitem.toMap());
    List<Map> list = await dbClient1.rawQuery('SELECT * FROM Menu');
    print(list);
    return res;
  }

  //deletion
  Future<int> deleteMenu(Menu menuitem) async {
    var dbClient1 = await db;
    int res = await dbClient1.delete("Menu");
    return res;
  }

  // Get number of Note objects in database
  Future<int> getCount1() async {
    var dbClient = await db;
    List<Map<String, dynamic>> x = await dbClient.rawQuery('SELECT COUNT (*) from Menu');
    int res = Sqflite.firstIntValue(x);
    return res;
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'Note List' [ List<Note> ]
  Future<List<Menu>> getMenuList() async {

    var menuMapList = await getMenuMapList(); // Get 'Map List' from database
    int count = menuMapList.length;         // Count the number of map entries in db table

    List<Menu> menuList = List<Menu>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      menuList.add(Menu.fromMapObject(menuMapList[i]));
    }

    return menuList;
  }
}