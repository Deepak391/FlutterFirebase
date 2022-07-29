import 'package:get/get.dart';
import 'controllers/auth_controller.dart';
import 'controllers/cart_controller.dart';
import 'controllers/product_controller.dart';

Future<void> init() async {
  Get.put(AuthController());
  Get.put(CartController());
  Get.put(ProductController());
}
