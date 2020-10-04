import 'package:freezed_annotation/freezed_annotation.dart';
import 'book.dart';

part 'book_state.freezed.dart';
part 'book_state.g.dart';

@freezed
abstract class BookState with _$BookState {
  const factory BookState({
    Book book,
    String holderName,
    String holderId,
    DateTime from,
    DateTime to
  }) = _BookState;

  factory BookState.fromJson(Map<String, dynamic> json) => _$BookStateFromJson(json);
}
