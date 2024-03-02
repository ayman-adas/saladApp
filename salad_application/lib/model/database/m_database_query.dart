// ignore_for_file: unnecessary_null_comparison

part of './../../import/import.dart';

class MDatabaseQuery {
  MDatabaseQuery._();
  static MDatabaseQuery query = MDatabaseQuery._();
  Database? database;
  Future<Database> get haveDB async => database ??= await initDatabase;
  static int sailAll = 0;

  static Future<Database> get initDatabase async {
    // path directors for storage
    // String databasePath = await getDatabasesPath(); // not recommended
    Directory directory = await getApplicationDocumentsDirectory();
    developer.log('directory : ${directory.path}', name: 'Connection DataBase');

    // path storage database
    String pathDB = p.join(directory.path, 'pasket.db');

    return openDatabase(pathDB, version: 1, onCreate: (db, version) async {
      // table salad
      await db.execute(
        'CREATE TABLE ${MDatabaseHeaders.tablename} ('
        '${MDatabaseHeaders.colId} TEXT PRIMARY KEY, '
        '${MDatabaseHeaders.colEnglishName} TEXT, '
        '${MDatabaseHeaders.colArabicname} TEXT, '
        '${MDatabaseHeaders.colImage} TEXT, '
        '${MDatabaseHeaders.colSail} INTEGER, '
        '${MDatabaseHeaders.colCounter} INTEGER, '
        '${MDatabaseHeaders.colTimeStamp} TEXT '
        ')',
      );
    });
  }

  /// [createSalad] app salad on DB and return number create row
  ///
  /// when return -1 not add salad in table
  Future<int> createSalad(MDatabasePasket data) async {
    return haveDB
        .then(
      (dbConnection) =>
          dbConnection.insert(MDatabaseHeaders.tablename, data.toMap()),
    )
        .onError((error, stackTrace) {
      developer.log('error when add salad to table salad in DB',
          name: 'DBQueryArticle', error: error.toString());
      return -1;
    });
  }

  /// [deleteSaladById] delete salad by salad!._id and return number row deleted
  ///
  /// when return -1 error delete salad
  Future<int> deleteSaladById(MDatabasePasket data) async {
    return haveDB
        .then(
      (dbConnection) => dbConnection.delete(
        MDatabaseHeaders.tablename,
        where: '${MDatabaseHeaders.colId} = ?',
        whereArgs: [data.id],
      ),
    )
        .onError((error, stackTrace) {
      developer.log('error when delete salad form db ',
          name: 'DBQueryArticle', error: error.toString());
      return -1;
    });
  }

  /// [getSaladList] return list as MDatabasePasket  form db
  ///
  /// when error return list empty form type MDatabasePasket
  Future<List<MDatabasePasket>> get getSaladList async {
    return haveDB
        .then(
      (dbConnection) => dbConnection
          .query(
            MDatabaseHeaders.tablename,
            orderBy: '${MDatabaseHeaders.colTimeStamp} desc',
          )
          .then((listData) => listData.isNotEmpty
              ? listData
                  .map((salad) => MDatabasePasket.formMap(map: salad))
                  .toList()
              : <MDatabasePasket>[]),
    )
        .onError(
      (error, stackTrace) {
        developer.log('error when get all salad form db',
            name: 'DBQueryArticle', error: error.toString());
        return <MDatabasePasket>[];
      },
    );
  }

  /// [getSaladById] return salad by salad!._id form db
  ///
  /// when error return null no have found salad
  Future<MDatabasePasket?> getSaladById(MDatabasePasket data) {
    return haveDB
        .then((dbConnection) => dbConnection.query(MDatabaseHeaders.tablename,
            where: '${MDatabaseHeaders.colId} = ?', whereArgs: [data.id]))
        .then(
          (listData) => listData.isNotEmpty
              ? MDatabasePasket.formMap(map: listData.first)
              : null,
        )
        .onError((error, stackTrace) {
      developer.log('error when get salad by salad!._id form db',
          name: 'DBQueryArticle', error: error.toString());
      return null;
    });
  }

  /// [updateSaladById] update data for salad by salad!._id and return number is update row
  ///
  /// when error return -1 not found
  Future<int> updateSaladById(MDatabasePasket data) {
    return haveDB
        .then(
      (dbConnection) => dbConnection.update(
          MDatabaseHeaders.tablename, data.toMap(),
          where: '${MDatabaseHeaders.colId} = ?', whereArgs: [data.id]),
    )
        .onError((error, stackTrace) {
      developer.log("error when update salad by salad!._id ",
          name: "DBQueryArticle", error: error.toString());
      return -1;
    });
  }

  /// closeDB
  Future<void> closeDB() async {
    await database?.close();
  }
}
