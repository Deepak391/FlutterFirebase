import 'package:get/get.dart';
import 'package:myapp/models/products.dart';
import 'package:myapp/services/firestore_db.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;
  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}
