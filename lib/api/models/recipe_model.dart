class RecipeModel {
  final String? name;
  final String? images;
  final String? rating;
  final String? totalTime;

  RecipeModel(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime});

  factory RecipeModel.fromJson(dynamic json) {
    return RecipeModel(
        name: json['name'],
        images: json['images'][0]['hostedLargeUrl'],
        rating: json['rating'].toString(),
        totalTime: json['totalTime']);
  }

  static List<RecipeModel> recipesFromSnapshot({required List snapshot}){
    return snapshot.map((data) {
      return RecipeModel.fromJson(data);
    }).toList();
  }
}
/*

/// edited by Pratik
/// remove above give code of recipe model this is my task from internship





// Data Modal

class ProductModal {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  ProductModal({required this.products, required this.total, required this.skip, required this.limit});

  ProductModal.fromJson(Map<String, dynamic> json) {
    List<Products> allproduct=[];

    for(Map<String,dynamic> eachJson in json["products"]) {
      allproduct.add(Products.fromJson(eachJson));
    }
    ProductModal(products: allproduct,
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"]);

  }

}



/// Product Modal (Edited By Pratik)


class Products {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Reviews>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;

  Products(
      {required this.id,
        required this.title,
        required this.description,
        required this.category,
        required this.price,
        required this.discountPercentage,
        required this.rating,
        required this.stock,
        required this.tags,
        required this.brand,
        required this.sku,
        required this.weight,
        required this.dimensions,
        required this.warrantyInformation,
        required this.shippingInformation,
        required this.availabilityStatus,
        required this.reviews,
        required this.returnPolicy,
        required this.minimumOrderQuantity,
        required this.meta,
        required this.images,
        required this.thumbnail});

  factory Products.fromJson(Map<String, dynamic> json) {
    List<Reviews> allreviews=[];

    for(Map<String,dynamic> eachJson in json["reviews"]) {
      allreviews.add(Reviews.fromjson(eachJson));
    }

    /// do like this (Edited by pratik)
    ///
return Products(
        id: json['id'],
    title : json['title'],
    description : json['description'],
    category : json['category'],
    price : json['price'],
    discountPercentage : json['discountPercentage'],
    rating : json['rating'],
    stock : json['stock'],
    tags : json['tags'].cast<String>(),
    brand : json['brand'],
    sku : json['sku'],
    weight : json['weight'],
    dimensions : Dimensions.fromJson(json["dimensions"]),
    warrantyInformation : json['warrantyInformation'],
    shippingInformation : json['shippingInformation'],
    availabilityStatus : json['availabilityStatus'],
    reviews : allreviews,
    returnPolicy : json['returnPolicy'],
    minimumOrderQuantity : json['minimumOrderQuantity'],
    meta : Meta.fromJson(json["meta"]),
    images : json['images'].cast<String>(),
    thumbnail : json['thumbnail'],
);

}
}


///dimension Modal

class Dimensions {
  double? width;
  double? height;
  double? depth;

  Dimensions({required this.width, required this.height, required this.depth});

  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
        width: json["width"],
        height: json["height"],
        depth: json["depth"]);
  }

}


///review Modal
///

class Reviews {
  int? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;

  Reviews({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail
  });


  factory Reviews.fromjson(Map<String,dynamic> json){
    return Reviews(rating: json["rating"],
        comment: json["comment"],
        date: json["date"],
        reviewerName: json["reviewerName"],
        reviewerEmail: json["reviewerEmail"]
    );
  }

}


//meta Modal


class Meta {
  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;

  Meta({required this.createdAt, required this.updatedAt, required this.barcode, required this.qrCode});

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        barcode: json["barcode"],
        qrCode: json["qrCode"]);
  }

}
*/
