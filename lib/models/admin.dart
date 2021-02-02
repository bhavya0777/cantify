class Admin {
  String _aname;
  String _ausername;
  String _apassword;
  String _adept;
  String _ahords;
  String _aemail;
  int _anumber;
  String _flaglogged;

  Admin(this._aname, this._ausername, this._apassword, this._adept, this._ahords,
      this._aemail, this._anumber, this._flaglogged);

  Admin.map(dynamic obj) {
    this._aname = obj['aname'];
    this._ausername = obj['ausername'];
    this._apassword = obj['apassword'];
    this._adept = obj['adept'];
    this._ahords = obj['ahords'];
    this._aemail = obj['aemail'];
    this._anumber = obj['anumber'];
    this._flaglogged = obj['password'];
  }

  String get aname => _aname;
  String get ausername => _ausername;
  String get apassword => _apassword;
  String get adept => _adept;
  String get ahords => _ahords;
  String get aemail => _aemail;
  int get anumber => _anumber;
  String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["aname"] = _aname;
    map["ausername"] = _ausername;
    map["apassword"] = _apassword;
    map["adept"] = _adept;
    map["ahords"] = _ahords;
    map["aemail"] = _aemail;
    map["anumber"] = _anumber;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}