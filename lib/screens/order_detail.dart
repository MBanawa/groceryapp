import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  Map orderObj;

  OrderDetailScreen({Key? key, required this.orderObj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("#${orderObj['id']} - ${orderObj['status']}"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text("Order"),
              subtitle: Text("${orderObj['dateString']}"),
              trailing: Text("#${orderObj['id']}"),
            ),
            ListTile(
              title: const Text("Status"),
              subtitle: Text("${orderObj['status']}"),
            ),
            ListTile(
              title: const Text("Delivery"),
              subtitle: Text("${orderObj['deliveryAddress']}"),
              trailing: Text("${orderObj['paymentMethod']}"),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
              ),
              padding: const EdgeInsets.only(
                left: 12.0,
              ),
              child: const Text(
                "CART ITEMS",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: orderObj['cartItems'].length,
                  itemBuilder: (buildContext, index) {
                    return ListTile(
                      title: Text("${orderObj['cartItems'][index]["title"]}"),
                      subtitle: Text(
                          "qty: ${orderObj['cartItems'][index]["qty"]} x PHP ${orderObj['cartItems'][index]["price"]}"),
                      trailing:
                          Text("${orderObj['cartItems'][index]["total"]}"),
                    );
                  },
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 80.0,
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "TOTAL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "PHP ${orderObj['cartTotal']}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
