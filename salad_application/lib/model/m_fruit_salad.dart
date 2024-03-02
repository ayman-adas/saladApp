part of './../import/import.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class MFruitSalad {
  String? _arabicName;
  String? _englishName;
  String? _image;
  int? _salary;
  String? _id;
  get getID => _id;
  int _count = 0;

  get getCount => _count;

  void setCount(counter) => _count = counter;
  set id(String? value) => _id = value;
  MFruitSalad();

  void setArabicName(arabicname) => _arabicName = arabicname;

  get getEnglishName => _englishName;

  void setEnglishName(englishname) => _englishName = englishname;

  get getImageUrl => _image;

  void setImageUrl(imageurl) => _image = imageurl;

  get getsalary => _salary;

  void setsalary(salarys) => _salary = salarys;
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      MLanguages.saladNameArarbic: _arabicName,
      MLanguages.saladNameEnglish: _englishName,
      MLanguages.image: _image,
      MLanguages.salary: _salary,
      MLanguages.id: _id
    };
  }

  // read data format map  save on attribute
  MFruitSalad.fromMap(Map<String, dynamic> map) {
    _id = map[MLanguages.id];
    _arabicName = map[MLanguages.saladNameArarbic];
    _englishName = map[MLanguages.saladNameEnglish];
    _image = map[MLanguages.image];
    _salary = map[MLanguages.salary];
  }

  @override
  String toString() {
    return 'MFruitSalad(_arabicName: $_arabicName, _englishName: $_englishName, _image: $_image, _salary: $_salary, _id: $_id)';
  }
}
