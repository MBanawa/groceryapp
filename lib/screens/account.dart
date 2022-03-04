import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/screens/address.dart';
import 'package:groceryapp/screens/orders.dart';
import 'package:groceryapp/screens/profile.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Account"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/mike.png'),
            ),
            title: const Text("Mikeruu Pogi"),
            subtitle: const Text("+639171593694"),
            trailing: TextButton(
              onPressed: () {
                Get.to(ProfileScreen());
              },
              child: const Text("Edit"),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.green,
            ),
            title: const Text("Notifications"),
            subtitle: const Text("Turn on / off notifications"),
            trailing: Switch(
              onChanged: (i) {},
              value: true,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ),
            title: const Text("My Orders"),
            subtitle: const Text("Manage my orders"),
            trailing: IconButton(
              onPressed: () {
                Get.to(OrdersScreen());
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.note_outlined,
              color: Colors.green,
            ),
            title: const Text("My Addresses"),
            subtitle: const Text("Manage delivery addresses"),
            trailing: IconButton(
              onPressed: () {
                Get.to(const AddressScreen());
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
