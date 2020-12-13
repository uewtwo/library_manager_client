import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class DBProvider {
  Database _db;

  String get databaseName;

  String get tableName;

  int get version;

  Future<Database> get table async {
    if (_db == null) {
      _db = await openDatabase(
        join(
          await getDatabasesPath(),
          databaseName,
        ),
        onCreate: createTable,
        version: version,
      );
    }
    final List<Map<String, dynamic>> res = await _db.rawQuery("""
      SELECT name FROM sqlite_master WHERE type = 'table' AND name = '$tableName';
    """);
    if (res.length == 0) {
      createTable(_db, version);
    }

    return _db;
  }

  // Tableがpathに存在しない場合に onCreate で呼ばれる.
  createTable(Database db, int version);
}
