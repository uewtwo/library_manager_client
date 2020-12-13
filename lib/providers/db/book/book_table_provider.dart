import 'package:librarymanagerclient/errors/book/BookNotFoundException.dart';
import 'package:librarymanagerclient/models/book/book.dart';
import 'package:librarymanagerclient/providers/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class BookTableProvider extends DBProvider {
  @override
  String get databaseName => 'book_db.sqlite';

  @override
  String get tableName => 'books';

  @override
  int get version => 1;

  @override
  createTable(Database db, int version) => db.execute("""
      CREATE TABLE $tableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        isbn STRING NOT NULL,
        seq INTEGER NOT NULL,
        title STRING NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT NOT NULL,
        UNIQUE(isbn, seq)
      );
      """);

  Future<Book> getBook(String isbn) async {
    final db = await table;
    final List<Map<String, dynamic>> res = (await db.query(
      tableName,
      where: "isbn=?",
      whereArgs: [isbn],
    ));
    if (res.length == 0) {
      throw BookNotFoundException();
    }
    var book = {...res[0]};
    book["isbn"] = book["isbn"].toString();
    return Book.fromJson(book);
  }

  Future<List<Book>> getBooks() async {
    final db = await table;
    List<Book> books = List<Book>();
    (await db.query(tableName))
        .where((element) => element != null)
        .forEach((element) {
      var book = {...element};
      book["isbn"] = element["isbn"].toString();
      books.add(Book.fromJson(book));
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
    final db = await table;
    return await db.insert(tableName, book.toJson());
  }

  Future<int> saveBookByIsbn(String isbn) async {
    // FIXME: 国立国会図書館から本のタイトルを取得する
    final String title = "hogehoge";
    final String now = DateTime.now().toString();
    final Book book = Book(
      isbn: isbn,
      seq: (await getNumberOfBooks(isbn)) + 1,
      title: title,
      createdAt: now,
      updatedAt: now,
    );

    return saveBook(book);
  }

  Future<List<Map<String, dynamic>>> rawQuery(String sql) async {
    final db = await table;
    return await db.rawQuery(sql);
  }
}
