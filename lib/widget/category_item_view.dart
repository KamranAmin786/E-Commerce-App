import 'package:flutter/material.dart';
import 'package:touchdown/app_utils.dart';

class CategoryItemView extends StatelessWidget {

  const CategoryItemView({super.key, required this.category});
  final Map<String, dynamic> category;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/category/${category['image']}.png",
              width: 30,
              height: 30,
              color: Colors.grey,
            ),
            const SizedBox(width: 15),
            Flexible(
              child: Text(
                category['name'].toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}