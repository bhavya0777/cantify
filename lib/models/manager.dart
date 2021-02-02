class Manager {
  String _mname;
  String _musername;
  String _mpassword;
  String _mdept;
  String _mhords;
  String _memail;
  int _mnumber;
  String _flaglogged;

  Manager(this._mname, this._musername, this._mpassword, this._mdept, this._mhords,
      this._memail, this._mnumber, this._flaglogged);

  Manager.map(dynamic obj) {
    this._mname = obj['mname'];
    this._musername = obj['musername'];
    this._mpassword = obj['mpassword'];
    this._mdept = obj['mdept'];
    this._mhords = obj['mhords'];
    this._memail = obj['memail'];
    this._mnumber = obj['mnumber'];
    this._flaglogged = obj['password'];
  }

  String get mname => _mname;
  String get musername => _musername;
  String get mpassword => _mpassword;
  String get mdept => _mdept;
  String get mhords => _mhords;
  String get memail => _memail;
  int get mnumber => _mnumber;
  String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["mname"] = _mname;
    map["musername"] = _musername;
    map["mpassword"] = _mpassword;
    map["mdept"] = _mdept;
    map["mhords"] = _mhords;
    map["memail"] = _memail;
    map["mnumber"] = _mnumber;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}