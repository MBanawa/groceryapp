import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  String imageURL;
  String title;
  int qty;
  double price;
  double total;

  CartItem({
    Key? key,
    required this.imageURL,
    required this.title,
    required this.qty,
    required this.price,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              padding: const EdgeInsets.all(4.0),
              margin: const EdgeInsets.all(8.0),
              child: Image.asset(
                imageURL,
                height: 60.0,
                width: 60.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  Text("Qty $qty x PHP $price"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  RawMaterialButton(
                    fillColor: Colors.green,
                    elevation: 0,
                    padding: const EdgeInsets.all(4.0),
                    shape: const CircleBorder(),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16.0,
                    ),
                  ),
                  Text("$qty"),
                  RawMaterialButton(
                    fillColor: Colors.green,
                    elevation: 0,
                    padding: const EdgeInsets.all(4.0),
                    shape: const CircleBorder(),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 6.0),
            child: Text(
              "PHP $total",
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
