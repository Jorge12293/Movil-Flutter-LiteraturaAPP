/*
class Content {
  int? id;
  String? idDocument;
  String? title;
  String? urlConcept;
  String? urlExample;
  Content({this.id, this.idDocument, this.title,this.urlConcept,this.urlExample});
}
*/
// To parse this JSON data, do
//
//     final content = contentFromJson(jsonString);

import 'dart:convert';

Content contentFromJson(String str) => Content.fromJson(json.decode(str));

String contentToJson(Content data) => json.encode(data.toJson());

class Content {
    Content({
        this.id,
        this.idDocument,
        this.title,
        this.urlConcept,
        this.urlExample,   
    });

    int? id;
    String? idDocument;
    String? title;
    String? urlConcept;
    String? urlExample;
  

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        urlConcept: json["urlConcept"],
        urlExample: json["urlExample"],
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "urlConcept": urlConcept,
        "urlExample": urlExample,
        "id": id,
        "title": title,
    };
}
