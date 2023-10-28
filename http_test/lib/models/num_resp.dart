import 'package:json_annotation/json_annotation.dart';

part 'num_resp.g.dart';

@JsonSerializable()
class NumResp {
  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  NumResp({this.text, this.number, this.found, this.type});

  factory NumResp.fromJson(Map<String, dynamic> json) {
    return _$NumRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumRespToJson(this);
}
