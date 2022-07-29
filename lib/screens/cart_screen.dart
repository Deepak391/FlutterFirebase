import 'package:flutter/material.dart';
import 'package:myapp/widgets/cart_products.dart';
import 'package:myapp/widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: SingleChildScrollView(
        child: Column(children: [
          CartProducts(),
          CartTotal(),
        ]),
      ),
    );
  }
}
