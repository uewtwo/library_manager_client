// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BookState _$BookStateFromJson(Map<String, dynamic> json) {
  return _BookState.fromJson(json);
}

class _$BookStateTearOff {
  const _$BookStateTearOff();

// ignore: unused_element
  _BookState call(
      {Book book,
      String holderName,
      String holderId,
      DateTime from,
      DateTime to}) {
    return _BookState(
      book: book,
      holderName: holderName,
      holderId: holderId,
      from: from,
      to: to,
    );
  }
}

// ignore: unused_element
const $BookState = _$BookStateTearOff();

mixin _$BookState {
  Book get book;
  String get holderName;
  String get holderId;
  DateTime get from;
  DateTime get to;

  Map<String, dynamic> toJson();
  $BookStateCopyWith<BookState> get copyWith;
}

abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res>;
  $Res call(
      {Book book,
      String holderName,
      String holderId,
      DateTime from,
      DateTime to});

  $BookCopyWith<$Res> get book;
}

class _$BookStateCopyWithImpl<$Res> implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  final BookState _value;
  // ignore: unused_field
  final $Res Function(BookState) _then;

  @override
  $Res call({
    Object book = freezed,
    Object holderName = freezed,
    Object holderId = freezed,
    Object from = freezed,
    Object to = freezed,
  }) {
    return _then(_value.copyWith(
      book: book == freezed ? _value.book : book as Book,
      holderName:
          holderName == freezed ? _value.holderName : holderName as String,
      holderId: holderId == freezed ? _value.holderId : holderId as String,
      from: from == freezed ? _value.from : from as DateTime,
      to: to == freezed ? _value.to : to as DateTime,
    ));
  }

  @override
  $BookCopyWith<$Res> get book {
    if (_value.book == null) {
      return null;
    }
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

abstract class _$BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$BookStateCopyWith(
          _BookState value, $Res Function(_BookState) then) =
      __$BookStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Book book,
      String holderName,
      String holderId,
      DateTime from,
      DateTime to});

  @override
  $BookCopyWith<$Res> get book;
}

class __$BookStateCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements _$BookStateCopyWith<$Res> {
  __$BookStateCopyWithImpl(_BookState _value, $Res Function(_BookState) _then)
      : super(_value, (v) => _then(v as _BookState));

  @override
  _BookState get _value => super._value as _BookState;

  @override
  $Res call({
    Object book = freezed,
    Object holderName = freezed,
    Object holderId = freezed,
    Object from = freezed,
    Object to = freezed,
  }) {
    return _then(_BookState(
      book: book == freezed ? _value.book : book as Book,
      holderName:
          holderName == freezed ? _value.holderName : holderName as String,
      holderId: holderId == freezed ? _value.holderId : holderId as String,
      from: from == freezed ? _value.from : from as DateTime,
      to: to == freezed ? _value.to : to as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_BookState implements _BookState {
  const _$_BookState(
      {this.book, this.holderName, this.holderId, this.from, this.to});

  factory _$_BookState.fromJson(Map<String, dynamic> json) =>
      _$_$_BookStateFromJson(json);

  @override
  final Book book;
  @override
  final String holderName;
  @override
  final String holderId;
  @override
  final DateTime from;
  @override
  final DateTime to;

  @override
  String toString() {
    return 'BookState(book: $book, holderName: $holderName, holderId: $holderId, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookState &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)) &&
            (identical(other.holderName, holderName) ||
                const DeepCollectionEquality()
                    .equals(other.holderName, holderName)) &&
            (identical(other.holderId, holderId) ||
                const DeepCollectionEquality()
                    .equals(other.holderId, holderId)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(book) ^
      const DeepCollectionEquality().hash(holderName) ^
      const DeepCollectionEquality().hash(holderId) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @override
  _$BookStateCopyWith<_BookState> get copyWith =>
      __$BookStateCopyWithImpl<_BookState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookStateToJson(this);
  }
}

abstract class _BookState implements BookState {
  const factory _BookState(
      {Book book,
      String holderName,
      String holderId,
      DateTime from,
      DateTime to}) = _$_BookState;

  factory _BookState.fromJson(Map<String, dynamic> json) =
      _$_BookState.fromJson;

  @override
  Book get book;
  @override
  String get holderName;
  @override
  String get holderId;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  _$BookStateCopyWith<_BookState> get copyWith;
}
