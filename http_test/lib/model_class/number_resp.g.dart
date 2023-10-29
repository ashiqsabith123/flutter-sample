// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberResp _$NumberRespFromJson(Map<String, dynamic> json) => NumberResp(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberRespToJson(NumberResp instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
