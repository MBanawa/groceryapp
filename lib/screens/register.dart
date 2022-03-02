import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.green),
        title: const Text(
          "Create an Account",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 120,
              width: 120,
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
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 12),
            // ignore: sized_box_for_whitespace
            Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              child: ElevatedButton(
                child: const Text("Register"),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: TextButton(
                child: const Text("Already have an account?"),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/fb-icon.png',
                      height: 32,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, elevation: 0),
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/google-icon.png',
                      height: 32,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
