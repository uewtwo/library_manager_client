import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_state.freezed.dart';

part 'book_state.g.dart';

@freezed
abstract class BookState implements _$BookState {
  const BookState._();

  const factory BookState({
    @required String isbn,
    @required int seq,
    @required int isBorrowed,
    @required @nullable String holderId,
    @required @nullable String borrowFrom,
    @required @nullable String borrowTo,
    @required String createdAt,
    @required String updatedAt,
  }) = _BookState;

  bool get isValidIsbn => isbn.isNotEmpty;

  bool get isValidSeq => seq != 0;

  bool get isValidHolderId => holderId.isNotEmpty;

  bool get isValidBorrowTo => borrowTo.isNotEmpty;

  bool isValid() {
    return isValidIsbn && isValidSeq && isValidHolderId && isValidBorrowTo;
  }

  factory BookState.fromJson(Map<String, dynamic> json) =>
      _$BookStateFromJson(json);
}
