import 'package:flutter/material.dart';
import 'package:touchdown/app_utils.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 3.0,top: 9,bottom: 9),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[500]!,
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Center(
              child: Text(
                "Categories".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colorWhite,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}