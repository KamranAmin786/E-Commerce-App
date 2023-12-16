import 'package:flutter/material.dart';

class QuantityFavouriteDetailView extends StatefulWidget {
  const QuantityFavouriteDetailView({super.key});

  @override
  _QuantityFavouriteDetailViewState createState() =>
      _QuantityFavouriteDetailViewState();
}

class _QuantityFavouriteDetailViewState
    extends State<QuantityFavouriteDetailView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              child: const Icon(
                Icons.remove_circle_outline,
                size: 30,
              ),
              onTap: () {
                if (counter > 0) {
                  setState(() {
                    counter -= 1;
                  });
                  // Perform additional actions or feedback
                }
              },
            ),
            const SizedBox(
              width: 18.0,
            ),
            Text(
              "$counter",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              width: 18.0,
            ),
            GestureDetector(
                child: const Icon(Icons.add_circle_outline, size: 30),
                onTap: () {
                  if (counter < 100) {
                    setState(() {
                      counter += 1;
                    });
                    // Perform additional actions or feedback
                  }
                }),
          ],
        ),
        GestureDetector(
          child: const Icon(Icons.favorite, color: Colors.red, size: 30),
          onTap: () {},
        ),
      ],
    );
  }
}
