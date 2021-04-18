import 'detail.dart';

class LongDesc {
  LongDesc({
    this.discountDetails,
    this.exchangeDtls,
    this.sizeDetails,
    this.seller,
    this.details,
  });

  String? discountDetails;
  String? exchangeDtls;
  List<Map<String, String>>? sizeDetails;
  String? seller;
  List<Detail>? details;

  factory LongDesc.fromJson(Map<String, dynamic> json) => LongDesc(
        discountDetails: json["discountDetails"],
        exchangeDtls: json["exchangeDtls"],
        sizeDetails: List<Map<String, String>>.from(json["sizeDetails"].map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
        seller: json["seller"],
        details:
            List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "discountDetails": discountDetails,
        "exchangeDtls": exchangeDtls,
        "sizeDetails": List<dynamic>.from(sizeDetails!.map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
        "seller": seller,
        "details": List<dynamic>.from(details!.map((x) => x.toJson())),
      };
}
