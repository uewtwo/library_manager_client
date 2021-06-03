// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BookHistory _$BookHistoryFromJson(Map<String, dynamic> json) {
  return _BookHistory.fromJson(json);
}

class _$BookHistoryTearOff {
  const _$BookHistoryTearOff();

// ignore: unused_element
  _BookHistory call(
      {int id,
      @required String isbn,
      @required int seq,
      @required int isBorrowed,
      @required @nullable String holderId,
      @required @nullable String borrowFrom,
      @required @nullable String borrowTo,
      @required String createdAt}) {
    return _BookHistory(
      id: id,
      isbn: isbn,
      seq: seq,
      isBorrowed: isBorrowed,
      holderId: holderId,
      borrowFrom: borrowFrom,
      borrowTo: borrowTo,
      createdAt: createdAt,
    );
  }
}

// ignore: unused_element
const $BookHistory = _$BookHistoryTearOff();

mixin _$BookHistory {
  int get id;
  String get isbn;
  int get seq;
  int get isBorrowed;
  @nullable
  String get holderId;
  @nullable
  String get borrowFrom;
  @nullable
  String get borrowTo;
  String get createdAt;

  Map<String, dynamic> toJson();
  $BookHistoryCopyWith<BookHistory> get copyWith;
}

abstract class $BookHistoryCopyWith<$Res> {
  factory $BookHistoryCopyWith(
          BookHistory value, $Res Function(BookHistory) then) =
      _$BookHistoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String isbn,
      int seq,
      int isBorrowed,
      @nullable String holderId,
      @nullable String borrowFrom,
      @nullable String borrowTo,
      String createdAt});
}

class _$BookHistoryCopyWithImpl<$Res> implements $BookHistoryCopyWith<$Res> {
  _$BookHistoryCopyWithImpl(this._value, this._then);

  final BookHistory _value;
  // ignore: unused_field
  final $Res Function(BookHistory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object isbn = freezed,
    Object seq = freezed,
    Object isBorrowed = freezed,
    Object holderId = freezed,
    Object borrowFrom = freezed,
    Object borrowTo = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      seq: seq == freezed ? _value.seq : seq as int,
      isBorrowed: isBorrowed == freezed ? _value.isBorrowed : isBorrowed as int,
      holderId: holderId == freezed ? _value.holderId : holderId as String,
      borrowFrom:
          borrowFrom == freezed ? _value.borrowFrom : borrowFrom as String,
      borrowTo: borrowTo == freezed ? _value.borrowTo : borrowTo as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

abstract class _$BookHistoryCopyWith<$Res>
    implements $BookHistoryCopyWith<$Res> {
  factory _$BookHistoryCopyWith(
          _BookHistory value, $Res Function(_BookHistory) then) =
      __$BookHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String isbn,
      int seq,
      int isBorrowed,
      @nullable String holderId,
      @nullable String borrowFrom,
      @nullable String borrowTo,
      String createdAt});
}

class __$BookHistoryCopyWithImpl<$Res> extends _$BookHistoryCopyWithImpl<$Res>
    implements _$BookHistoryCopyWith<$Res> {
  __$BookHistoryCopyWithImpl(
      _BookHistory _value, $Res Function(_BookHistory) _then)
      : super(_value, (v) => _then(v as _BookHistory));

  @override
  _BookHistory get _value => super._value as _BookHistory;

  @override
  $Res call({
    Object id = freezed,
    Object isbn = freezed,
    Object seq = freezed,
    Object isBorrowed = freezed,
    Object holderId = freezed,
    Object borrowFrom = freezed,
    Object borrowTo = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_BookHistory(
      id: id == freezed ? _value.id : id as int,
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      seq: seq == freezed ? _value.seq : seq as int,
      isBorrowed: isBorrowed == freezed ? _value.isBorrowed : isBorrowed as int,
      holderId: holderId == freezed ? _value.holderId : holderId as String,
      borrowFrom:
          borrowFrom == freezed ? _value.borrowFrom : borrowFrom as String,
      borrowTo: borrowTo == freezed ? _value.borrowTo : borrowTo as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
    ));
  }
}

@JsonSerializable()
class _$_BookHistory implements _BookHistory {
  const _$_BookHistory(
      {this.id,
      @required this.isbn,
      @required this.seq,
      @required this.isBorrowed,
      @required @nullable this.holderId,
      @required @nullable this.borrowFrom,
      @required @nullable this.borrowTo,
      @required this.createdAt})
      : assert(isbn != null),
        assert(seq != null),
        assert(isBorrowed != null),
        assert(createdAt != null);

  factory _$_BookHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_BookHistoryFromJson(json);

  @override
  final int id;
  @override
  final String isbn;
  @override
  final int seq;
  @override
  final int isBorrowed;
  @override
  @nullable
  final String holderId;
  @override
  @nullable
  final String borrowFrom;
  @override
  @nullable
  final String borrowTo;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'BookHistory(id: $id, isbn: $isbn, seq: $seq, isBorrowed: $isBorrowed, holderId: $holderId, borrowFrom: $borrowFrom, borrowTo: $borrowTo, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookHistory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)) &&
            (identical(other.seq, seq) ||
                const DeepCollectionEquality().equals(other.seq, seq)) &&
            (identical(other.isBorrowed, isBorrowed) ||
                const DeepCollectionEquality()
                    .equals(other.isBorrowed, isBorrowed)) &&
            (identical(other.holderId, holderId) ||
                const DeepCollectionEquality()
                    .equals(other.holderId, holderId)) &&
            (identical(other.borrowFrom, borrowFrom) ||
                const DeepCollectionEquality()
                    .equals(other.borrowFrom, borrowFrom)) &&
            (identical(other.borrowTo, borrowTo) ||
                const DeepCollectionEquality()
                    .equals(other.borrowTo, borrowTo)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isbn) ^
      const DeepCollectionEquality().hash(seq) ^
      const DeepCollectionEquality().hash(isBorrowed) ^
      const DeepCollectionEquality().hash(holderId) ^
      const DeepCollectionEquality().hash(borrowFrom) ^
      const DeepCollectionEquality().hash(borrowTo) ^
      const DeepCollectionEquality().hash(createdAt);

  @override
  _$BookHistoryCopyWith<_BookHistory> get copyWith =>
      __$BookHistoryCopyWithImpl<_BookHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookHistoryToJson(this);
  }
}

abstract class _BookHistory implements BookHistory {
  const factory _BookHistory(
      {int id,
      @required String isbn,
      @required int seq,
      @required int isBorrowed,
      @required @nullable String holderId,
      @required @nullable String borrowFrom,
      @required @nullable String borrowTo,
      @required String createdAt}) = _$_BookHistory;

  factory _BookHistory.fromJson(Map<String, dynamic> json) =
      _$_BookHistory.fromJson;

  @override
  int get id;
  @override
  String get isbn;
  @override
  int get seq;
  @override
  int get isBorrowed;
  @override
  @nullable
  String get holderId;
  @override
  @nullable
  String get borrowFrom;
  @override
  @nullable
  String get borrowTo;
  @override
  String get createdAt;
  @override
  _$BookHistoryCopyWith<_BookHistory> get copyWith;
}
