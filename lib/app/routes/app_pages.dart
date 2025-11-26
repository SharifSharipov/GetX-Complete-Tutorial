import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_example/app/modules/views/product_detail_view.dart';
import 'package:getx_example/app/modules/views/product_view.dart';

part 'app_routes.dart';
 sealed class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.productView,
      page: () => const ProductView(),
    ),
    GetPage(
      name: Routes.productDetails,
      page: () => const ProductDetailView(),
    ),
  ];
}