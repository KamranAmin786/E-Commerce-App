import 'package:flutter/material.dart';

class RatingsSizesDetailView extends StatefulWidget {
  const RatingsSizesDetailView({super.key});

  @override
  State<RatingsSizesDetailView> createState() => _RatingsSizesDetailViewState();
}

class _RatingsSizesDetailViewState extends State<RatingsSizesDetailView> {

  final List<String> sizes = ["XS", "S", "M", "L", "XL"];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // RATINGS
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Ratings",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 3),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(5, (index) {
                return GestureDetector(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 2),
                    child: Container(
                      width: 28,
                      height: 28,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
        const Spacer(),

        // SIZES
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Text(
              "Sizes",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            const SizedBox(height: 3),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: sizes.map((size) {
                return GestureDetector(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Container(
                      width: 28,
                      height: 28,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 2),
                      ),
                      child: Text(
                        size,
                        style:  TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}