/*class Unity {
  int? id;
  String? idDocument;
  String? title;
  String? titleUnit;
  String? titleDetail;
  Unity({this.id, this.idDocument, this.title,this.titleUnit,this.titleDetail});
}
*/

// To parse this JSON data, do
//
//     final unity = unityFromJson(jsonString);

import 'dart:convert';

Unity unityFromJson(String str) => Unity.fromJson(json.decode(str));

String unityToJson(Unity data) => json.encode(data.toJson());

class Unity {
    Unity({
        this.id,
        this.idDocument,
        this.title,
        this.titleUnit,
        this.titleDetail,
    });

    int? id;
    String? idDocument;
    String? title;
    String? titleUnit;
    String? titleDetail;

    factory Unity.fromJson(Map<String, dynamic> json) => Unity(
        id: json["id"],
        title: json["title"],
        titleUnit: json["titleUnit"],
        titleDetail: json["titleDetail"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "titleUnit": titleUnit,
        "titleDetail": titleDetail,
    };
}
