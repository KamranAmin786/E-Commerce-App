import 'package:flutter/material.dart';
import 'package:touchdown/app_utils.dart';
import 'package:touchdown/widget/category_item_gridview.dart';
import 'package:touchdown/widget/footer_widget.dart';
import 'package:touchdown/widget/headline_widget.dart';
import 'package:touchdown/widget/product_item_gridview.dart';
import 'package:touchdown/widget/slider_carousel_widget.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool isAnimating = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        leading: const Icon(
          Icons.search,
          size: 30,
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Crik".toUpperCase(),
              style: const TextStyle(
                fontSize: 18.0, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 4),
            Image.asset(
              "assets/logo-dark.png",
              // replace with the actual path of your image
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 4),
             Text(
              "info".toUpperCase(),
              style: const TextStyle(
                fontSize: 18.0, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Stack(
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.black,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          SliderCarouselWidget(),
          SizedBox(
            height: 5.0,
          ),
          CategoryItemGridView(),
          HeadlineWidget(title: "Helmet",),
          SizedBox(
            height: 10.0,
          ),
          ProductViewGridView(),
          FooterView(),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
