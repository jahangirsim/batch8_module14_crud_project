class Product {
  String? id;
  String? productName;
  String? productCode;
  String? image;
  String? unitPrice;
  String? qty;
  String? totalPrice;
  String? createdDate;

  Product(
      {required this.id,
      required this.productName,
      required this.productCode,
      required this.unitPrice,
      required this.qty,
      required this.image,
      required this.totalPrice,
      required this.createdDate
      });
}
