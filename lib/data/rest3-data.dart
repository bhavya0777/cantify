import 'package:cantify/data/database_helper.dart';
import 'package:cantify/models/manager.dart';


class RestData {
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<Manager> login(String username, String password) async {
    String flagLogged = "logged";
    //simulate internet connection by selecting the local database to check if user has already been registered
    var user = new Manager(null, username, password, null, null, null, null, null);
    var db = new DatabaseHelper();
    var userRetorno = new Manager(null, null, null, null, null, null, null, null);
    userRetorno = await db.selectManager(user);
    if (userRetorno != null) {
      flagLogged = "logged";
      return new Future.value(new Manager(
          null, username, password, null, null, null, null, flagLogged));
    } else {
      flagLogged = "not";
      return new Future.value(new Manager(
          null, username, password, null, null, null, null, flagLogged));
    }
  }
}