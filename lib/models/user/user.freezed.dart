// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {int id,
      @required String identifier,
      @required String name,
      @required int permission,
      @required String createdAt,
      @required String updatedAt}) {
    return _User(
      id: id,
      identifier: identifier,
      name: name,
      permission: permission,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  int get id;
  String get identifier;
  String get name;
  int get permission;
  String get createdAt;
  String get updatedAt;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String identifier,
      String name,
      int permission,
      String createdAt,
      String updatedAt});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object identifier = freezed,
    Object name = freezed,
    Object permission = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      identifier:
          identifier == freezed ? _value.identifier : identifier as String,
      name: name == freezed ? _value.name : name as String,
      permission: permission == freezed ? _value.permission : permission as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String identifier,
      String name,
      int permission,
      String createdAt,
      String updatedAt});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object identifier = freezed,
    Object name = freezed,
    Object permission = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      identifier:
          identifier == freezed ? _value.identifier : identifier as String,
      name: name == freezed ? _value.name : name as String,
      permission: permission == freezed ? _value.permission : permission as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
    ));
  }
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      @required this.identifier,
      @required this.name,
      @required this.permission,
      @required this.createdAt,
      @required this.updatedAt})
      : assert(identifier != null),
        assert(name != null),
        assert(permission != null),
        assert(createdAt != null),
        assert(updatedAt != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  final String identifier;
  @override
  final String name;
  @override
  final int permission;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'User(id: $id, identifier: $identifier, name: $name, permission: $permission, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.identifier, identifier) ||
                const DeepCollectionEquality()
                    .equals(other.identifier, identifier)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
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
      const DeepCollectionEquality().hash(identifier) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {int id,
      @required String identifier,
      @required String name,
      @required int permission,
      @required String createdAt,
      @required String updatedAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get identifier;
  @override
  String get name;
  @override
  int get permission;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  _$UserCopyWith<_User> get copyWith;
}
