// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookState _$_$_BookStateFromJson(Map<String, dynamic> json) {
  return _$_BookState(
    uid: json['uid'] as String,
    holderName: json['holderName'] as String,
    holderId: json['holderId'] as String,
    from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
    to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
  );
}

Map<String, dynamic> _$_$_BookStateToJson(_$_BookState instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'holderName': instance.holderName,
      'holderId': instance.holderId,
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
    };
