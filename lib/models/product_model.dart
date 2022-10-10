import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.pName,
     required this.pId,
     required this.pCost,
     required this.pAvailability,
     this.pDetails,
     this.pCategory,
  });

  String pName;
  int pId;
  int pCost;
  int pAvailability;
  String? pDetails;
  String? pCategory;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        pName: json["p_name"] == null ? null : json["p_name"],
        pId: json["p_id"] == null ? null : json["p_id"],
        pCost: json["p_cost"] == null ? null : json["p_cost"],
        pAvailability:
            json["p_availability"] == null ? null : json["p_availability"],
        pDetails: json["p_details"] == null ? null : json["p_details"],
        pCategory: json["p_category"] == null ? null : json["p_category"],
      );

  Map<String, dynamic> toJson() => {
        "p_name": pName == null ? null : pName,
        "p_id": pId == null ? null : pId,
        "p_cost": pCost == null ? null : pCost,
        "p_availability": pAvailability == null ? null : pAvailability,
        "p_details": pDetails == null ? null : pDetails,
        "p_category": pCategory == null ? null : pCategory,
      };
}
