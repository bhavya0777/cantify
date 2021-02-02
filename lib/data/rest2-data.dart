import 'package:cantify/data/database_helper.dart';
import 'package:cantify/models/admin.dart';


class RestData {
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<Admin> login(String username, String password) async {
    String flagLogged = "logged";
    //simulate internet connection by selecting the local database to check if user has already been registered
    var user = new Admin(null, username, password, null, null, null, null, null);
    var db = new DatabaseHelper();
    var userRetorno = new Admin(null, null, null, null, null, null, null, null);
    userRetorno = await db.selectAdmin(user);
    if (userRetorno != null) {
      flagLogged = "logged";
      return new Future.value(new Admin(
          null, username, password, null, null, null, null, flagLogged));
    } else {
      flagLogged = "not";
      return new Future.value(new Admin(
          null, username, password, null, null, null, null, flagLogged));
    }
  }
}