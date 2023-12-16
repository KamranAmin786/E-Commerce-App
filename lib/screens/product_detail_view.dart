import 'package:flutter/material.dart';
import 'package:touchdown/app_utils.dart';
import 'package:touchdown/widget/add_to_cart_widget.dart';
import 'package:touchdown/widget/quantity_detail_widget.dart';
import 'package:touchdown/widget/rating_sized_detail_view.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key, required this.product});

  final Map<String, dynamic> product;

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  bool isAnimating = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        isAnimating = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(
          widget.product['color'][0],
          widget.product['color'][1],
          widget.product['color'][2],
          0.4,
        ),
        foregroundColor: colorWhite,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Stack(
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(
                widget.product['color'][0],
                widget.product['color'][1],
                widget.product['color'][2],
                0.4,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Protective Gear",
                          style: TextStyle(color: colorWhite),
                        ),
                        Text(
                          widget.product['name'],
                          style: const TextStyle(
                            color: colorWhite,
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        AnimatedOpacity(
                          curve: Curves.easeInOut,
                          opacity: isAnimating ? 1 : 0,
                          duration: const Duration(milliseconds: 700),
                          child: const Text(
                            'Price',
                            style: TextStyle(
                              color: colorBlack,
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          curve: Curves.easeInOut,
                          opacity: isAnimating ? 1 : 0,
                          duration: const Duration(milliseconds: 700),
                          child: Text(
                            "\$${widget.product['price']}",
                            style: const TextStyle(
                              color: colorBlack,
                              fontSize: 36,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 90.0,
                          ),
                          const RatingsSizesDetailView(),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(child: Text(widget.product['description'],textAlign: TextAlign.justify,),),
                          const SizedBox(
                            height: 20,
                          ),
                          const QuantityFavouriteDetailView(),
                          const SizedBox(
                            height: 20,
                          ),
                          AddToCartDetailView(
                            product: widget.product,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 90.0,
            right: 15.0,
            child: AnimatedOpacity(
              curve: Curves.easeInOut,
              opacity: isAnimating ? 1 : 0,
              duration: const Duration(milliseconds: 900),
              child: Image.asset(
                "assets/helmet/${widget.product['image']}.png",
                width: 250,
                height: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
