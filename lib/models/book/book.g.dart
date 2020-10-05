// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$_$_BookFromJson(Map<String, dynamic> json) {
  return _$_Book(
    uid: json['uid'] as String,
    title: json['title'] as String,
    janCode: json['janCode'] as int,
    seq: json['seq'] as int,
  );
}

Map<String, dynamic> _$_$_BookToJson(_$_Book instance) => <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'janCode': instance.janCode,
      'seq': instance.seq,
    };
