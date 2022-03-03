import 'package:flutter/material.dart';

class CategoryBadge extends StatelessWidget {
  String title;

  CategoryBadge({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 20.0, right: 20),
      margin: const EdgeInsets.all(4.0),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
