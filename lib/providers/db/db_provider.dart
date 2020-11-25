import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class DBProvider {
  Database _db;

  String get databaseName;

  String get tableName;

  Future<Database> get database async {
    if (_db == null) {
      _db = await openDatabase(
        join(
          await getDatabasesPath(),
          databaseName,
        ),
        onCreate: createDatabase,
        version: 1,
      );
    }
    return _db;
  }

  // DBがpathに存在しない場合に onCreate で呼ばれる.
  createDatabase(Database db, int version);
}
