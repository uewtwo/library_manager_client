import 'package:librarymanagerclient/models/user/user.dart';
import 'package:librarymanagerclient/providers/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class UserTableProvider extends DBProvider {
  @override
  String get databaseName => 'user_db.sqlite';

  @override
  String get tableName => 'users';

  @override
  int get version => 1;

  @override
  createTable(Database db, int version) => db.execute("""
      CREATE TABLE $tableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        identifier STRING,
        permission INTEGER,
        name STRING,
        createdAt TEXT NOT NULL,
        updatedAt TEXT NOT NULL,
        UNIQUE(identifier)
      );
    """);

  Future<int> registerUser(User user) async {
    final db = await table;
    return await db.insert(tableName, user.toJson());
  }

  Future<dynamic> getUsers() async {
    final db = await table;
    List<Map> result = await db.query(tableName);
    return result;
  }

  Future<String> getUserFromIdentifier(String identifier) async {
    final db = await table;
    List<Map> result = await db.query(
      tableName,
      where: "identifier=?",
      whereArgs: [identifier],
    );
    var userName;
    if (result.length > 0) {
      userName = result[0]['name'].toString();
    }
    return userName;
  }
}
