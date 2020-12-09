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
      {@required String isbn,
      @required int seq,
      @required int returned,
      @required String holderId,
      @required String borrowFrom,
      @required String borrowTo,
      @required String createdAt,
      @required String updatedAt}) {
    return _BookState(
      isbn: isbn,
      seq: seq,
      returned: returned,
      holderId: holderId,
      borrowFrom: borrowFrom,
      borrowTo: borrowTo,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

// ignore: unused_element
const $BookState = _$BookStateTearOff();

mixin _$BookState {
  String get isbn;
  int get seq;
  int get returned;
  String get holderId;
  String get borrowFrom;
  String get borrowTo;
  String get createdAt;
  String get updatedAt;

  Map<String, dynamic> toJson();
  $BookStateCopyWith<BookState> get copyWith;
}

abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res>;
  $Res call(
      {String isbn,
      int seq,
      int returned,
      String holderId,
      String borrowFrom,
      String borrowTo,
      String createdAt,
      String updatedAt});
}

class _$BookStateCopyWithImpl<$Res> implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  final BookState _value;
  // ignore: unused_field
  final $Res Function(BookState) _then;

  @override
  $Res call({
    Object isbn = freezed,
    Object seq = freezed,
    Object returned = freezed,
    Object holderId = freezed,
    Object borrowFrom = freezed,
    Object borrowTo = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      seq: seq == freezed ? _value.seq : seq as int,
      returned: returned == freezed ? _value.returned : returned as int,
      holderId: holderId == freezed ? _value.holderId : holderId as String,
      borrowFrom:
          borrowFrom == freezed ? _value.borrowFrom : borrowFrom as String,
      borrowTo: borrowTo == freezed ? _value.borrowTo : borrowTo as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

abstract class _$BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$BookStateCopyWith(
          _BookState value, $Res Function(_BookState) then) =
      __$BookStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String isbn,
      int seq,
      int returned,
      String holderId,
      String borrowFrom,
      String borrowTo,
      String createdAt,
      String updatedAt});
}

class __$BookStateCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements _$BookStateCopyWith<$Res> {
  __$BookStateCopyWithImpl(_BookState _value, $Res Function(_BookState) _then)
      : super(_value, (v) => _then(v as _BookState));

  @override
  _BookState get _value => super._value as _BookState;

  @override
  $Res call({
    Object isbn = freezed,
    Object seq = freezed,
    Object returned = freezed,
    Object holderId = freezed,
    Object borrowFrom = freezed,
    Object borrowTo = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_BookState(
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      seq: seq == freezed ? _value.seq : seq as int,
      returned: returned == freezed ? _value.returned : returned as int,
      holderId: holderId == freezed ? _value.holderId : holderId as String,
      borrowFrom:
          borrowFrom == freezed ? _value.borrowFrom : borrowFrom as String,
      borrowTo: borrowTo == freezed ? _value.borrowTo : borrowTo as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

@JsonSerializable()
class _$_BookState implements _BookState {
  const _$_BookState(
      {@required this.isbn,
      @required this.seq,
      @required this.returned,
      @required this.holderId,
      @required this.borrowFrom,
      @required this.borrowTo,
      @required this.createdAt,
      @required this.updatedAt})
      : assert(isbn != null),
        assert(seq != null),
        assert(returned != null),
        assert(holderId != null),
        assert(borrowFrom != null),
        assert(borrowTo != null),
        assert(createdAt != null),
        assert(updatedAt != null);

  factory _$_BookState.fromJson(Map<String, dynamic> json) =>
      _$_$_BookStateFromJson(json);

  @override
  final String isbn;
  @override
  final int seq;
  @override
  final int returned;
  @override
  final String holderId;
  @override
  final String borrowFrom;
  @override
  final String borrowTo;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'BookState(isbn: $isbn, seq: $seq, returned: $returned, holderId: $holderId, borrowFrom: $borrowFrom, borrowTo: $borrowTo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookState &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)) &&
            (identical(other.seq, seq) ||
                const DeepCollectionEquality().equals(other.seq, seq)) &&
            (identical(other.returned, returned) ||
                const DeepCollectionEquality()
                    .equals(other.returned, returned)) &&
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
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isbn) ^
      const DeepCollectionEquality().hash(seq) ^
      const DeepCollectionEquality().hash(returned) ^
      const DeepCollectionEquality().hash(holderId) ^
      const DeepCollectionEquality().hash(borrowFrom) ^
      const DeepCollectionEquality().hash(borrowTo) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

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
      {@required String isbn,
      @required int seq,
      @required int returned,
      @required String holderId,
      @required String borrowFrom,
      @required String borrowTo,
      @required String createdAt,
      @required String updatedAt}) = _$_BookState;

  factory _BookState.fromJson(Map<String, dynamic> json) =
      _$_BookState.fromJson;

  @override
  String get isbn;
  @override
  int get seq;
  @override
  int get returned;
  @override
  String get holderId;
  @override
  String get borrowFrom;
  @override
  String get borrowTo;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  _$BookStateCopyWith<_BookState> get copyWith;
}
