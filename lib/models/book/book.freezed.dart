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
  _Book call({String uid, String title, int janCode, int seq}) {
    return _Book(
      uid: uid,
      title: title,
      janCode: janCode,
      seq: seq,
    );
  }
}

// ignore: unused_element
const $Book = _$BookTearOff();

mixin _$Book {
  String get uid;
  String get title;
  int get janCode;
  int get seq;

  Map<String, dynamic> toJson();
  $BookCopyWith<Book> get copyWith;
}

abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call({String uid, String title, int janCode, int seq});
}

class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object janCode = freezed,
    Object seq = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      janCode: janCode == freezed ? _value.janCode : janCode as int,
      seq: seq == freezed ? _value.seq : seq as int,
    ));
  }
}

abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String title, int janCode, int seq});
}

class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object uid = freezed,
    Object title = freezed,
    Object janCode = freezed,
    Object seq = freezed,
  }) {
    return _then(_Book(
      uid: uid == freezed ? _value.uid : uid as String,
      title: title == freezed ? _value.title : title as String,
      janCode: janCode == freezed ? _value.janCode : janCode as int,
      seq: seq == freezed ? _value.seq : seq as int,
    ));
  }
}

@JsonSerializable()
class _$_Book implements _Book {
  const _$_Book({this.uid, this.title, this.janCode, this.seq});

  factory _$_Book.fromJson(Map<String, dynamic> json) =>
      _$_$_BookFromJson(json);

  @override
  final String uid;
  @override
  final String title;
  @override
  final int janCode;
  @override
  final int seq;

  @override
  String toString() {
    return 'Book(uid: $uid, title: $title, janCode: $janCode, seq: $seq)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Book &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.janCode, janCode) ||
                const DeepCollectionEquality()
                    .equals(other.janCode, janCode)) &&
            (identical(other.seq, seq) ||
                const DeepCollectionEquality().equals(other.seq, seq)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(janCode) ^
      const DeepCollectionEquality().hash(seq);

  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  const factory _Book({String uid, String title, int janCode, int seq}) =
      _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override
  int get janCode;
  @override
  int get seq;
  @override
  _$BookCopyWith<_Book> get copyWith;
}
