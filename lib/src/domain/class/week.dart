/*
class Week {
  int? id;
  String? idDocument;
  String? title;
  Week({this.id, this.idDocument, this.title});
}
*/
// To parse this JSON data, do
//
//     final week = weekFromJson(jsonString);

import 'dart:convert';

Week weekFromJson(String str) => Week.fromJson(json.decode(str));

String weekToJson(Week data) => json.encode(data.toJson());

class Week {
    Week({
        this.id,
        this.idDocument,
        this.title,
    });

    int? id;
    String? idDocument;
    String? title;

    factory Week.fromJson(Map<String, dynamic> json) => Week(
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
    };
}
