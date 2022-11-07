/*
class Link {
  String? idDocument;
  String? urlActivities;
  String? urlVideos;
  Link({this.idDocument, this.urlActivities,this.urlVideos});
}
*/

// To parse this JSON data, do
//
//     final link = linkFromJson(jsonString);

import 'dart:convert';

Link linkFromJson(String str) => Link.fromJson(json.decode(str));

String linkToJson(Link data) => json.encode(data.toJson());

class Link {
    Link({
        this.idDocument,
        this.urlVideos,
        this.urlActivities,
    });

    String? idDocument;
    String? urlVideos;
    String? urlActivities;

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        urlVideos: json["urlVideos"],
        urlActivities: json["urlActivities"],
    );

    Map<String, dynamic> toJson() => {
        "urlVideos": urlVideos,
        "urlActivities": urlActivities,
    };
}
