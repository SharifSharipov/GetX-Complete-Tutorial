import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getx_example/app/modules/models/product_models.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModels product = Get.arguments as ProductModels;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,spacing: 10,children: [
          Text(product.name,style:const TextStyle(fontSize: 24),),
          Text('\$${product.price.toStringAsFixed(2)}',style:const TextStyle(fontSize: 20,color: Colors.green),),
        ],),
      ),
    );
  }
}