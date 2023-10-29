import 'package:json_annotation/json_annotation.dart';

part 'number_resp.g.dart';

@JsonSerializable()
class NumberResp {
  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  NumberResp({this.text, this.number, this.found, this.type});

  factory NumberResp.fromJson(Map<String, dynamic> json) {
    return _$NumberRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberRespToJson(this);
}
