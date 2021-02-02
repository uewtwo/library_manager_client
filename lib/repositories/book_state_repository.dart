import 'package:librarymanagerclient/models/book/book_state.dart';
import 'package:state_notifier/state_notifier.dart';

class BookStateRepository extends StateNotifier<BookState> {
  BookStateRepository()
      : super(BookState(
          isbn: '',
          seq: 0,
          isBorrowed: 0,
          holderId: '',
          borrowFrom: '',
          borrowTo: '',
          createdAt: '',
          updatedAt: '',
        ));

  void exportResult(Map map) {
    map.forEach((key, value) {
      switch (key) {
        case 'isbn':
          state = state.copyWith(isbn: value);
          break;
        case 'seq':
          state = state.copyWith(seq: value);
          break;
        case 'isBorrowed':
          state = state.copyWith(isBorrowed: value);
          break;
        case 'holderId':
          state = state.copyWith(holderId: value);
          break;
        case 'borrowFrom':
          state = state.copyWith(borrowFrom: value);
          break;
        case 'borrowTo':
          state = state.copyWith(borrowTo: value);
          break;
        case 'createdAt':
          state = state.copyWith(createdAt: value);
          break;
        case 'updatedAt':
          state = state.copyWith(updatedAt: value);
          break;
      }
    });
  }
}
