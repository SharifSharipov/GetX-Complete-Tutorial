class ProductModels {
  final String name;
  final double price;
  final String description;
  ProductModels({
    required this.name,
    required this.price,
    required this.description,
  });
  factory ProductModels.fromJson(Map<String, dynamic> json) {
    return ProductModels(
      name: json['name'] as String? ?? "",
      price: json['price']as double? ?? 0.0,
      description: json['description'] as String? ?? "",
    );
  }
  Map<String, dynamic> toJson() {
    return {'name': name, 'price': price, 'description': description};
  }

  @override
  String toString() {
    return 'ProductModels(name: $name, price: $price, description: $description)';
  }
}
