import 'dart:convert';
/// id : 4
/// token : "QpwL5tke4Pnpja7X4"

GetModel getModelFromJson(String str) => GetModel.fromJson(json.decode(str));
String getModelToJson(GetModel data) => json.encode(data.toJson());
class GetModel {
  GetModel({
      num? id, 
      String? token,}){
    _id = id;
    _token = token;
}

  GetModel.fromJson(dynamic json) {
    _id = json['id'];
    _token = json['token'];
  }
  num? _id;
  String? _token;
GetModel copyWith({  num? id,
  String? token,
}) => GetModel(  id: id ?? _id,
  token: token ?? _token,
);
  num? get id => _id;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['token'] = _token;
    return map;
  }

}