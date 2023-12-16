import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}