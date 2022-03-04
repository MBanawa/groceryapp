import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:groceryapp/custom_widgets/welcome_slide.dart';
import 'package:groceryapp/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: CarouselSlider(
                  items: const [
                    WelcomeSlide(
                      image: 'assets/images/slide_1.png',
                      title: 'Get Fresh Food',
                      subtitle: 'Get Fresh Food for your Family',
                    ),
                    WelcomeSlide(
                      image: "assets/images/slide_2.png",
                      title: 'Secure Payments',
                      subtitle: 'All your payments are securely processed',
                    ),
                    WelcomeSlide(
                      image: "assets/images/slide_3.png",
                      title: 'Fast Delivery',
                      subtitle: "Don't wait too much, we offer fast delivery",
                    ),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: const Text(
                  'Start Now',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
