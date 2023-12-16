import 'package:flutter/material.dart';

class AddToCartDetailView extends StatelessWidget {
  final Map<String, dynamic> product;

  const AddToCartDetailView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        backgroundColor: Color.fromRGBO(
          (product['color'][0]).toInt(),
          (product['color'][1]).toInt(),
          (product['color'][2]).toInt(),
          0.4,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Text(
            "Add to cart".toUpperCase(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
