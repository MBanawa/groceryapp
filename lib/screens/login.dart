import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/screens/register.dart';
import 'package:groceryapp/screens/tabs.dart';

class LoginScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  login() {
    var email = (_email.text).trim().toLowerCase();
    var password = _password.text;
    _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((res) {
      Get.offAll(const TabScreen());
    }).catchError((e) {
      Get.showSnackbar(GetSnackBar(
        duration: const Duration(
          seconds: 3,
        ),
        message: "Login Error: ${e.toString()}",
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.green),
        title: const Text(
          "Mikeruu's Groceryhan",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: InputBorder.none,
                  labelText: "Email Address",
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                obscureText: true,
                controller: _password,
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
                  child: const Text("Login"),
                  onPressed: () {
                    login();
                    // Get.offAll(const TabScreen());
                  },
                ),
              ),
              const SizedBox(height: 12),
              Container(
                child: TextButton(
                  child: const Text("Create New Account"),
                  onPressed: () {
                    Get.to(() => const RegisterScreen());
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
      ),
    );
  }
}
