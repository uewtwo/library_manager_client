import 'package:librarymanagerclient/errors/book/BookNotFoundException.dart';
import 'package:librarymanagerclient/models/book/book.dart';
import 'package:librarymanagerclient/providers/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class BookStatusTableProvider extends DBProvider {
  @override
  String get databaseName => 'book_db.sqlite';

  @override
  String get tableName => 'book_status';

  @override
  createDatabase(Database db, int version) => db.execute("""
      CREATE TABLE $tableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        isbn STRING,
        seq INTEGER,
        createdAt TEXT NOT NULL,
        updatedAt TEXT NOT NULL,
        UNIQUE(isbn, seq)
      );
    """);

  Future<Book> getBook(String isbn) async {
    final db = await database;
    final List<Map<String, dynamic>> res = (await db.query(
      tableName,
      where: "isbn=?",
      whereArgs: [isbn],
    ));
    if (res.length == 0) {
      throw BookNotFoundException();
    }
    return Book.fromJson(res[0]);
  }

  Future<List<Book>> getBooks() async {
    final db = await database;
    List<Book> books;
    (await db.query(tableName)).forEach((element) {
      books.add(Book.fromJson(element));
    });

    return books;
  }

  // seqが必ず順番になっていないと成り立たない
  Future<int> getNumberOfBooks(String isbn) async {
    try {
      return (await getBook(isbn)).seq;
    } on BookNotFoundException catch (e) {
      return 0;
    }
  }

  Future<int> saveBook(Book book) async {
    final db = await database;
    return await db.insert(tableName, book.toJson());
  }

  Future<int> saveBookByIsbn(String isbn) async {
    // FIXME: 国立国会図書館から本のタイトルを取得する
    final String title = "hogehoge";
    final Book book = Book(
      isbn: isbn,
      seq: (await getNumberOfBooks(isbn)) + 1,
      title: title,
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
    );

    return saveBook(book);
  }
}
