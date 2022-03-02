import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/screens/manage_address.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addresses"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Home"),
            subtitle: const Text("1 Makisig Way, Elite Village, 2009"),
            trailing: IconButton(
              onPressed: () {
                Get.to(const ManageAddressScreen());
              },
              icon: const Icon(Icons.edit_outlined),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const ManageAddressScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
