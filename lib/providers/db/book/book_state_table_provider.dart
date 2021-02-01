import 'package:librarymanagerclient/errors/book/BookStateNotFoundException.dart';
import 'package:librarymanagerclient/models/book/book_state.dart';
import 'package:librarymanagerclient/providers/db/book/book_table_provider.dart';
import 'package:librarymanagerclient/providers/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class BookStateTableProvider extends DBProvider {
  @override
  String get databaseName => 'book_db.sqlite';

  @override
  String get tableName => 'book_state';

  @override
  int get version => 1;

  @override
  createTable(Database db, int version) => db.execute("""
      CREATE TABLE $tableName(
        isbn STRING NOT NULL,
        seq INTEGER NOT NULL,
        isBorrowed INTEGER NOT NULL,
        holderId TEXT,
        borrowFrom TEXT,
        borrowTo TEXT,
        createdAt TEXT NOT NULL,
        updatedAt TEXT NOT NULL,
        UNIQUE(isbn, seq)
      );
      """);

  Future<BookState> getBookStatus(String isbn, int seq) async {
    final db = await table;
    final List<Map<String, dynamic>> res = (await db.query(
      tableName,
      where: "isbn = ? AND seq = ?",
      whereArgs: [isbn, seq],
    ));
    if (res.length == 0) {
      throw BookStateNotFoundException();
    }
    var bookState = {...res[0]};
    bookState["isbn"] = bookState["isbn"].toString();
    return BookState.fromJson(bookState);
  }

  // Search for books that are not borrowed.
  Future<BookState> searchBookNotBorrowed(String isbn) async {
    final db = await table;
    final List<Map<String, dynamic>> res = (await db.query(
      tableName,
      where: "isbn = ? AND isBorrowed = 0",
      whereArgs: [isbn],
    ));
    if (res.length == 0) {
      throw BookStateNotFoundException();
    }
    var bookState = {...res[0]};
    bookState["isbn"] = res[0]["isbn"].toString();
    return BookState.fromJson(bookState);
  }

  Future<int> saveBookState(BookState bookState) async {
    final db = await table;
    return await db.insert(tableName, bookState.toJson());
  }

  // Used to initialize book state.
  Future<int> saveBookByIsbn(String isbn) async {
    final bookProvider = BookTableProvider();
    final int seq = (await bookProvider.getNumberOfBooks(isbn));
    final String now = DateTime.now().toString();
    final BookState bookState = BookState(
      isbn: isbn,
      seq: seq,
      isBorrowed: 0,
      holderId: null,
      borrowFrom: null,
      borrowTo: null,
      createdAt: now,
      updatedAt: now,
    );

    return saveBookState(bookState);
  }

  Future<int> updateBookState(BookState bookState) async {
    final db = await table;
    return await db.update(tableName, bookState.toJson(),
        where: 'isbn = ? and seq = ?',
        whereArgs: [bookState.isbn, bookState.seq]);
  }

  Future<List<Map<String, dynamic>>> rawQuery(String sql) async {
    final db = await table;
    return await db.rawQuery(sql);
  }
}
