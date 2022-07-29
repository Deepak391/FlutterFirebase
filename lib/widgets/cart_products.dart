import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:myapp/controllers/cart_controller.dart';

import '../models/products.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find();
  CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 800,
        child: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCard(
                controller: controller,
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index,
              );
            }),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return product == null
        ? Text('Add Some Products')
        : Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    product.imageUrl,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text(
                  product.title,
                  textAlign: TextAlign.center,
                )),
                IconButton(
                    onPressed: () {
                      controller.removeProduct(product);
                    },
                    icon: const Icon(Icons.remove_circle)),
                Text('${quantity}'),
                IconButton(
                    onPressed: () {
                      controller.addProduct(product);
                    },
                    icon: const Icon(Icons.add_circle))
              ],
            ),
          );
  }
}
