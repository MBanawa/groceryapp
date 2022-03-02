import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Address"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              child: Image.asset(
                'assets/images/map.png',
                fit: BoxFit.cover,
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "Tag (Eg. Home, Office)",
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "Name",
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "Mobile Number",
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "Full Address",
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: InputBorder.none,
                      labelText: "Pincode",
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    child: ElevatedButton(
                      child: const Text("Save Changes"),
                      onPressed: () {
                        Get.back();
                      },
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
