import 'package:flutter/material.dart';
import 'package:myapp/screens/cart_screen.dart';
import 'package:myapp/screens/profile_screen.dart';

import '../widgets/product_item.dart';
import 'package:get/get.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Get.to(() => CartScreen());
              },
              icon: const Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                Get.to(() => profilescreen());
              },
              icon: const Icon(Icons.person))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          productitems(),
        ],
      )),
    );
  }
}
