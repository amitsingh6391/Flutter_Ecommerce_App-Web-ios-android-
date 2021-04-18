import 'dart:convert';

import 'longDescription.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));
String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.data,
  });

  List<Datum> data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.imageUrl,
    this.name,
    this.shortDesc,
    this.origPrice,
    this.discountPrice,
    this.discountPercentage,
    this.longDesc,
  });

  String? imageUrl;
  String? name;
  String? shortDesc;
  String? origPrice;
  String? discountPrice;
  String? discountPercentage;
  LongDesc? longDesc;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        imageUrl: json["imageURL"],
        name: json["name"],
        shortDesc: json["shortDesc"],
        origPrice: json["OrigPrice"],
        discountPrice: json["DiscountPrice"],
        discountPercentage: json["discountPercentage"],
        longDesc: LongDesc.fromJson(json["longDesc"]),
      );

  Map<String, dynamic> toJson() => {
        "imageURL": imageUrl,
        "name": name,
        "shortDesc": shortDesc,
        "OrigPrice": origPrice,
        "DiscountPrice": discountPrice,
        "discountPercentage": discountPercentage,
        "longDesc": longDesc!.toJson(),
      };
}
