class Menu {
  int _dishid;
  String _dishname;
  int _rate;
 // String _flaglogged;

  Menu(this._dishname, this._rate );
Menu.withDishid(this._dishid,this._dishname, this._rate);
  Menu.map(dynamic obj) {
    this._dishid = obj['dishid'];
    this._dishname = obj['dishname'];
    this._rate = obj['rate'];
    //this._flaglogged = obj['flaglogged'];
  }

  String get dishname => _dishname;
  int get rate => _rate;
  Menu get dishid => null;
 // String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    //if (dishid != null) {
    //  map['dishid'] = _dishid;
    //}
    map["dishname"] = _dishname;
    map["rate"] = _rate;
    //map["flaglogged"] = _flaglogged;
    return map;
  }


  Menu.fromMapObject(Map<String, dynamic> map) {
    this._dishid = map['dishid'];
    this._dishname = map['dishname'];
    this._rate = map['rate'];
   // this._flaglogged = map['flaglogged'];
  }
}
