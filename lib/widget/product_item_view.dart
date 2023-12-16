import 'package:flutter/material.dart';
import 'package:touchdown/screens/product_detail_view.dart';

class ProductItemView extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductItemView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                color: Color.fromRGBO(
                  (product['color'][0]).toInt(),
                  (product['color'][1]).toInt(),
                  (product['color'][2]).toInt(),
                  0.4,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                "assets/helmet/${product['image']}.png",
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            ),
          ),

          // NAME
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: Text(
              product['name'],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "${product['price']}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  ProductDetailView(product: product,),
          ),
        );
      },
    );
  }
}
