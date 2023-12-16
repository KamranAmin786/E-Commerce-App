import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Flexible(
              child: Text(
                "Explore our range of state-of-the-art, snug, featherweight, and robust cricket helmets that redefine excellence in the market, all while keeping your budget intact.",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Image.asset(
                "assets/logo-dark.png", // replace with the actual path of your image
                color: Colors.grey,
                width: 40, // adjust the width as needed
                height: 40, // adjust the height as needed
              ),
            ),
            const Flexible(
              child: Text(
                "Copyright © CRIKINFO\nAll right reserved",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}