import 'package:flutter/material.dart';
import 'package:myapp/controllers/cart_controller.dart';
import 'package:myapp/controllers/product_controller.dart';
import 'package:myapp/models/products.dart';
import 'package:get/get.dart';

class productitems extends StatelessWidget {
  productitems({Key? key}) : super(key: key);
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
          child: ListView.builder(
        itemCount: productController.products.length,
        itemBuilder: (BuildContext context, int index) {
          return productitemscard(index: index);
        },
      )),
    );
  }
}

class productitemscard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();

  final int index;

  productitemscard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              productController.products[index].imageUrl,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            productController.products[index].title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
          Expanded(
              child: Text(
            '₹${productController.products[index].price.toString()}',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          IconButton(
              onPressed: () {
                cartController.addProduct(productController.products[index]);
              },
              icon: const Icon(Icons.add_shopping_cart))
        ],
      ),
    );
  }
}
