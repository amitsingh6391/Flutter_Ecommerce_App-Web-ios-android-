class Detail {
  Detail({
    this.productDetails,
    this.sizeFit,
    this.materialCare,
    this.styleNote,
  });

  String? productDetails;
  String? sizeFit;
  String? materialCare;
  String? styleNote;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        productDetails:
            json["productDetails"] == null ? null : json["productDetails"],
        sizeFit: json["Size & Fit"] == null ? null : json["Size & Fit"],
        materialCare:
            json["Material & Care"] == null ? null : json["Material & Care"],
        styleNote: json["Style note"] == null ? null : json["Style note"],
      );

  Map<String, dynamic> toJson() => {
        "productDetails": productDetails == null ? null : productDetails,
        "Size & Fit": sizeFit == null ? null : sizeFit,
        "Material & Care": materialCare == null ? null : materialCare,
        "Style note": styleNote == null ? null : styleNote,
      };
}
