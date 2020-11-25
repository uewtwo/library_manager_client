// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

class _$BookTearOff {
  const _$BookTearOff();

// ignore: unused_element
  _Book call(
      {int id,
      @required String isbn,
      @required int seq,
      @required String title,
      @required String createdAt,
      @required String updatedAt}) {
    return _Book(
      id: id,
      isbn: isbn,
      seq: seq,
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

// ignore: unused_element
const $Book = _$BookTearOff();

mixin _$Book {
  int get id;
  String get isbn;
  int get seq;
  String get title;
  String get createdAt;
  String get updatedAt;

  Map<String, dynamic> toJson();
  $BookCopyWith<Book> get copyWith;
}

abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String isbn,
      int seq,
      String title,
      String createdAt,
      String updatedAt});
}

class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object id = freezed,
    Object isbn = freezed,
    Object seq = freezed,
    Object title = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      seq: seq == freezed ? _value.seq : seq as int,
      title: title == freezed ? _value.title : title as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String isbn,
      int seq,
      String title,
      String createdAt,
      String updatedAt});
}

class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object id = freezed,
    Object isbn = freezed,
    Object seq = freezed,
    Object title = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_Book(
      id: id == freezed ? _value.id : id as int,
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      seq: seq == freezed ? _value.seq : seq as int,
      title: title == freezed ? _value.title : title as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

@JsonSerializable()
class _$_Book implements _Book {
  const _$_Book(
      {this.id,
      @required this.isbn,
      @required this.seq,
      @required this.title,
      @required this.createdAt,
      @required this.updatedAt})
      : assert(isbn != null),
        assert(seq != null),
        assert(title != null),
        assert(createdAt != null),
        assert(updatedAt != null);

  factory _$_Book.fromJson(Map<String, dynamic> json) =>
      _$_$_BookFromJson(json);

  @override
  final int id;
  @override
  final String isbn;
  @override
  final int seq;
  @override
  final String title;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'Book(id: $id, isbn: $isbn, seq: $seq, title: $title, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)) &&
            (identical(other.seq, seq) ||
                const DeepCollectionEquality().equals(other.seq, seq)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isbn) ^
      const DeepCollectionEquality().hash(seq) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {int id,
      @required String isbn,
      @required int seq,
      @required String title,
      @required String createdAt,
      @required String updatedAt}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  int get id;
  @override
  String get isbn;
  @override
  int get seq;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  _$BookCopyWith<_Book> get copyWith;
}
