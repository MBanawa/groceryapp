import 'package:flutter/material.dart';

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
              onPressed: () {},
              icon: const Icon(Icons.edit_outlined),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
