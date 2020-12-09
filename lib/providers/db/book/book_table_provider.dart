import 'package:librarymanagerclient/models/book/book.dart';
import 'package:librarymanagerclient/providers/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class BookTableProvider extends DBProvider {
  @override
  String get databaseName => 'book_db.sqlite';

  @override
  String get tableName => 'books';

  @override
  createDatabase(Database db, int version) => db.execute(
    """
      CREATE TABLE $tableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        isbn STRING,
        seq INTEGER,
        title STRING,
        createdAt TEXT NOT NULL,
        updatedAt TEXT NOT NULL,
        UNIQUE(isbn, seq)
      );
    """
  );

  // TODO: book_statusと一緒に保存されるべき（な気がする）ので
  // TODO: 単体で呼ばずにstatusと合わせて呼ぶ何かを実装する
  // TODO: どこかでseqをどうするか扱う奴が必要
  Future<int> registerBook(Book book) async {
    final db = await database;
    return await db.insert(tableName, book.toJson());
  }
}
