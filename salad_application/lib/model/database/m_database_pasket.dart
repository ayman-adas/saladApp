// ignore_for_file: public_member_api_docs, sort_constructors_first
part of './../../import/import.dart';

class MDatabasePasket {
  String? arabicName;
  String? englishName;
  String? image;
  int? sail;
  String? id;
  int? counter;
  String? timestamp;
  MDatabasePasket({
    this.id,
    this.englishName,
    this.arabicName,
    this.image,
    this.sail,
    this.counter,
    this.timestamp,
  });

  MDatabasePasket.formMap({required Map<String, dynamic> map}) {
    id = map[MDatabaseHeaders.colId];
    englishName = map[MDatabaseHeaders.colEnglishName];
    arabicName = map[MDatabaseHeaders.colArabicname];
    image = map[MDatabaseHeaders.colImage];
    sail = map[MDatabaseHeaders.colSail];

    counter = map[MDatabaseHeaders.colCounter];
    timestamp = map[MDatabaseHeaders.colTimeStamp];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data[MDatabaseHeaders.colId] = id;
    data[MDatabaseHeaders.colEnglishName] = englishName;
    data[MDatabaseHeaders.colArabicname] = arabicName;
    data[MDatabaseHeaders.colImage] = image;
    data[MDatabaseHeaders.colSail] = sail;

    data[MDatabaseHeaders.colCounter] = counter;
    data[MDatabaseHeaders.colTimeStamp] = timestamp;

    return data;
  }
}
