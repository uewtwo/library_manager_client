import 'package:librarymanagerclient/errors/book/BookNotFoundException.dart';
import 'package:librarymanagerclient/models/history/book_history.dart';
import 'package:librarymanagerclient/providers/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class BookHistoryTableProvider extends DBProvider {
  @override
  String get databaseName => 'history.sqlite';

  @override
  String get tableName => 'book_history';

  @override
  int get version => 1;

  @override
  createTable(Database db, int version) => db.execute("""
       CREATE TABLE $tableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        isbn STRING NOT NULL,
        seq INTEGER NOT NULL,
        isBorrowed INTEGER NOT NULL,
        holderId TEXT,
        borrowFrom TEXT,
        borrowTo TEXT,
        createdAt TEXT NOT NULL
      );
      """);

  Future<int> saveBookHistory(BookHistory bookHistory) async {
    final db = await table;
    return await db.insert(tableName, bookHistory.toJson());
  }

  Future<List<BookHistory>> getBookHistories() async {
    final db = await table;
    List<BookHistory> bookHistories = List<BookHistory>();
    (await db.query(tableName))
        .where((element) => element != null)
        .forEach((element) {
      var bookHistory = {...element};
      bookHistory["isbn"] = element["isbn"].toString();
      bookHistories.add(BookHistory.fromJson(bookHistory));
    });

    return bookHistories;
  }

  Future<BookHistory> getBookHistory(String isbn) async {
    final db = await table;
    final List<Map<String, dynamic>> res = (await db.query(
      tableName,
      where: "isbn=?",
      whereArgs: [isbn],
    ));
    if (res.length == 0) {
      throw BookNotFoundException();
    }
    var bookHistory = {...res[res.length - 1]};
    bookHistory["isbn"] = bookHistory["isbn"].toString();
    return BookHistory.fromJson(bookHistory);
  }

  Future<int> delete() async {
    final db = await table;
    return await db.delete(tableName);
  }
}
