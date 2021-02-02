class User {
  String _name;
  String _username;
  String _password;
  String _dept;
  String _hords;
  String _email;
  int _number;
  String _flaglogged;

  User(this._name, this._username, this._password, this._dept, this._hords,
      this._email, this._number, this._flaglogged);

  User.map(dynamic obj) {
    this._name = obj['name'];
    this._username = obj['username'];
    this._password = obj['password'];
    this._dept = obj['dept'];
    this._hords = obj['hords'];
    this._email = obj['email'];
    this._number = obj['number'];
    this._flaglogged = obj['password'];
  }

  String get name => _name;
  String get username => _username;
  String get password => _password;
  String get dept => _dept;
  String get hords => _hords;
  String get email => _email;
  int get number => _number;
  String get flaglogged => _flaglogged;

 //User get id => id;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _name;
    map["username"] = _username;
    map["password"] = _password;
    map["dept"] = _dept;
    map["hords"] = _hords;
    map["email"] = _email;
    map["number"] = _number;
    map["flaglogged"] = _flaglogged;
    return map;
  }

  User.fromMapObject(Map<String, dynamic> map) {
    this._name = map['name'];
    this._username = map['username'];
    this._password = map['password'];
    this._dept = map['dept'];
    this._hords = map['hords'];
    this._email = map['email'];
    this._number = map['number'];
    this._flaglogged = map['password'];
  }
}