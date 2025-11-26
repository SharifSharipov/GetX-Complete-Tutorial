import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/app/modules/controllers/product_controller.dart';
import 'package:getx_example/app/routes/app_pages.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: productController.productList.length,
          itemBuilder: (context, index) {
            final product = productController.productList[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
              isThreeLine: true,
              onTap: (){
                Get.toNamed(Routes.productDetails, arguments: product);
              },
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  productController.removeProduct(product);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
