import 'package:cantify/data/rest2-data.dart';
import 'package:cantify/models/admin.dart';

abstract class LoginPageContract{
  void onLoginSuccess(Admin user);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

//Simulator login
  doLogin(String username, String password){
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError));
  }
}