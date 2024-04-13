part of './../../import/import.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MPasket {
  //setter and getter
  String? _phone;
  String? _firstname;
  String? _lastname;

  String? _payment;
  String? _id;
  String? _country;
  String? _city;
  String? _state;
  String? _adress;
  String? _sailAll;
  List<MDatabasePasket>? _salad;
  String? timestamp;

  get getId => _id;

  void setId(String? id) => _id = id;
  MPasket();
  get getPhone => _phone;

  void setPhone(String? phone) => _phone = phone;

  get getFirstName => _firstname;

  void setFirstName(String? name) => _firstname = name;
  get getLastName => _lastname;

  void setLastName(String? name) => _lastname = name;

  get getPay => _payment;

  void setPay(String? payment) => _payment = payment;
  get getSail => _sailAll;

  void setSail() => _sailAll = CDatabase.sailAll.toString();
  get getSalad => _salad;

  get getCountry => _country;

  void setCountry(String? country) => _country = country;
  get getState => _state;

  void setState(String? state) => _state = state;
  get getCity => _city;

  void setCity(String? city) => _city = city;
  get getAdress => _adress;

  void setAdress(String? adress) => _adress = adress;
  get getList => _salad;

  void setList(List<MDatabasePasket>? list) => _salad = list;
  get getTime => timestamp;

  void setTime() =>
      timestamp = DateTime.now().microsecondsSinceEpoch.toString();
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      MLanguages.firstName: _firstname,
      MLanguages.lastName: _lastname,
      MLanguages.totalSails: _sailAll,
      MLanguages.payMethod: _payment,
      MLanguages.id: _id,
      MLanguages.adress: _adress,
      MLanguages.phone: _phone,
      MLanguages.country: _country,
      MLanguages.city: _city,
      MLanguages.state: _state,
      MLanguages.saladcombo: _salad,
      MDatabaseHeaders.colTimeStamp: timestamp,
    };
  }

  // read data format map  save on attribute
  MPasket.fromMap(Map<String, dynamic> map) {
    _id = map[MLanguages.id];
    _phone = map[MLanguages.phone];
    _firstname = map[MLanguages.firstName];
    _lastname = map[MLanguages.lastName];
    _adress = map[MLanguages.adress];
    _country = map[MLanguages.country];
    _state = map[MLanguages.state];
    _city = map[MLanguages.city];
    _payment = map[MLanguages.payMethod];
    _sailAll = map[MLanguages.totalSails];
    _salad = map[MLanguages.saladcombo];
    timestamp = map[MDatabaseHeaders.colTimeStamp];
  }

  @override
  String toString() {
    return 'MPasket(phone: $_phone, firtsname: $_firstname,lastname  $_lastname, adress: $_adress, id: $_id, country: $_country, state: $_state, city,$_city, timestamp $timestamp)';
  }
}
