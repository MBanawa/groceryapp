import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/custom_widgets/category_badge.dart';
import 'package:groceryapp/custom_widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List _products = [
    {
      "imageURL": "assets/images/products/1.jpg",
      "title": "Carrot",
      "price": 40.0,
    },
    {
      "imageURL": "assets/images/products/2.jpg",
      "title": "Gourd",
      "price": 30.0,
    },
    {
      "imageURL": "assets/images/products/3.jpg",
      "title": "Meat",
      "price": 400.0,
    },
    {
      "imageURL": "assets/images/products/4.jpg",
      "title": "Lettuce",
      "price": 60.0,
    },
    {
      "imageURL": "assets/images/products/5.jpg",
      "title": "Meat Big Piece",
      "price": 320.0,
    },
    {
      "imageURL": "assets/images/products/6.jpg",
      "title": "Pomegranate",
      "price": 180.0,
    },
    {
      "imageURL": "assets/images/products/7.jpg",
      "title": "Strawberry",
      "price": 540.0,
    },
    {
      "imageURL": "assets/images/products/8.jpg",
      "title": "Orange",
      "price": 170.0,
    },
    {
      "imageURL": "assets/images/products/9.jpg",
      "title": "spinach",
      "price": 70.0,
    },
    {
      "imageURL": "assets/images/products/10.jpg",
      "title": "Cabbage",
      "price": 26.0,
    },
  ];

  final List _categories = [
    "All",
    "Vegetables",
    "Meat",
    "Fruits",
    "Snacks",
    "Drinks",
    "Oils",
    "Daily Needs"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                ),
                items: [
                  Container(
                    child: Image.asset("assets/images/offers/1.png"),
                    padding: const EdgeInsets.all(4.0),
                  ),
                  Container(
                    child: Image.asset("assets/images/offers/2.png"),
                    padding: const EdgeInsets.all(4.0),
                  ),
                  Container(
                    child: Image.asset("assets/images/offers/3.png"),
                    padding: const EdgeInsets.all(4.0),
                  )
                ],
              ),
            ),
            Container(
              height: 40.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (buildContext, index) {
                  return CategoryBadge(title: _categories[index]);
                },
              ),
            ),
            Container(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (buildContext, index) {
                  return ProductCard(
                      imageURL: _products[index]["imageURL"],
                      title: _products[index]["title"],
                      price: _products[index]["price"]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
