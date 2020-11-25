import 'package:freezed_annotation/freezed_annotation.dart';
import 'book.dart';

part 'book_state.freezed.dart';
part 'book_state.g.dart';

@freezed
abstract class BookState with _$BookState {
  const factory BookState({
    @required String isbn,
    @required int seq,
    @required int returned,
    @required String holderId,
    @required String borrowFrom,
    @required String borrowTo,
    @required String createdAt,
    @required String updatedAt
  }) = _BookState;

  factory BookState.fromJson(Map<String, dynamic> json) => _$BookStateFromJson(json);
}
