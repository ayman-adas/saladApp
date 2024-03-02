part of './../import/import.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MAssstance {
  String? _image;
  String? _name;
  String? _desc;
  String? _id;

  get getId => _id;

  void setId(String? id) => _id = id;
  MAssstance();
  get getImage => _image;

  void setImage(String? image) => _image = image;

  get getName => _name;

  void setName(String? name) => _name = name;

  get getDesc => _desc;

  void setDesc(String? desc) => _desc = desc;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      MLanguages.proplemName: _name,
      MLanguages.image: _image,
      MLanguages.id: _id,
      MLanguages.desc: _desc
    };
  }

  // read data format map  save on attribute
  MAssstance.fromMap(Map<String, dynamic> map) {
    _id = map[MLanguages.id];
    _image = map[MLanguages.image];
    _name = map[MLanguages.proplemName];
    _desc = map[MLanguages.desc];
  }

  @override
  String toString() {
    return 'MAssstance(image: $_image, name: $_name, desc: $_desc, id: $_id)';
  }
}
