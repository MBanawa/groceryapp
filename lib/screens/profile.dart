import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/screens/welcome.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/mike.png'),
              radius: 60.0,
            ),
            const SizedBox(height: 20),
            const Text(
              "Mikeruu's Groceryhan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
                labelText: "Full Name",
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
                labelText: "Email Address",
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
                labelText: "Phone Number",
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 12),
            // ignore: sized_box_for_whitespace
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
            Container(
              child: TextButton(
                  onPressed: () {
                    Get.offAll(const WelcomeScreen());
                  },
                  child: const Text("Logout")),
            )
          ],
        ),
      ),
    );
  }
}
