import 'package:get/get.dart';
import 'package:getx_example/app/modules/models/product_models.dart';

class ProductController extends GetxController {
  var productList = <ProductModels>[].obs;

  void addProduct(ProductModels product) {
    productList.add(product);
  }

  void removeProduct(ProductModels product) {
    productList.remove(product);
  }
  @override
  void onInit() {
    productList.addAll([
      ProductModels(
          name: "Sample Product 1",
          price: 29.99,
          description: "This is a sample product description."),
      ProductModels(
          name: "Sample Product 2",
          price: 49.99,
          description: "This is another sample product description."),
      ProductModels(
          name: "Sample Product 3",
          price: 59.99,
          description: "This is yet another sample product description."),
    ]);
    super.onInit();
    // Initial products can be added here if needed
  }
}