import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:librarymanagerclient/providers/db/book/book_table_provider.dart';
import 'package:sqflite/sqlite_api.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    int id,
    @required String isbn,
    @required int seq,
    @required String title,
    @required String createdAt,
    @required String updatedAt
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
