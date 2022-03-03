import 'package:flutter/material.dart';
import 'package:groceryapp/custom_widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  final List _cartItems = [
    {
      "imageURL": "assets/images/products/1.jpg",
      "title": "Carrot",
      "qty": 1,
      "price": 20.0,
      "total": 20.0,
    },
    {
      "imageURL": "assets/images/products/5.jpg",
      "title": "Raw Meat",
      "qty": 2,
      "price": 320.0,
      "total": 640.0,
    },
    {
      "imageURL": "assets/images/products/8.jpg",
      "title": "Orange",
      "qty": 1,
      "price": 170.0,
      "total": 170.0,
    }
  ];

  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cart"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (buildContext, index) {
                  return CartItem(
                    imageURL: _cartItems[index]["imageURL"],
                    title: _cartItems[index]["title"],
                    qty: _cartItems[index]["qty"],
                    price: _cartItems[index]["price"],
                    total: _cartItems[index]["total"],
                  );
                },
              ),
            ),
            ListTile(
              title: const Text("Delivery Address"),
              subtitle: const Text("1 Makisig Way, Elite Ville, 2009"),
              trailing:
                  TextButton(onPressed: () {}, child: const Text("Change")),
            ),
            ListTile(
              title: const Text("Payment Method"),
              subtitle: const Text("Cash on Delivery"),
              trailing:
                  TextButton(onPressed: () {}, child: const Text("Change")),
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 0),
                onPressed: () {},
                child: const Text("Checkout (PHP 830.00)"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
