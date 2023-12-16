import 'package:flutter/material.dart';
import 'package:touchdown/app_utils.dart';
import 'package:touchdown/widget/product_item_view.dart';

class ProductViewGridView extends StatefulWidget {
  const ProductViewGridView({super.key});

  @override
  State<ProductViewGridView> createState() => _ProductViewGridViewState();
}

class _ProductViewGridViewState extends State<ProductViewGridView> {

  List<Map<String, dynamic>> product = [];

  @override
  void initState(){
    super.initState();
    loadJsonData("assets/data/product.json").then((data) {
      if (data != null) {
        setState(() {
          product = data;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(top: 5.0, left: 10, right: 10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 9.0,
          mainAxisSpacing: 6.0,
          mainAxisExtent: 230,
        ),
        shrinkWrap: true,
        itemCount: product.length,
        itemBuilder: (_, index) {
          return InkWell(
              child: ProductItemView(product: product[index]));
        },
      ),
    );
  }
}
