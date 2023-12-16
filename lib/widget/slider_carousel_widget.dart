import 'package:flutter/material.dart';
import 'package:touchdown/app_utils.dart';

class SliderCarouselWidget extends StatefulWidget {
  const SliderCarouselWidget({super.key});

  @override
  State<SliderCarouselWidget> createState() => _SliderCarouselWidgetState();
}

class _SliderCarouselWidgetState extends State<SliderCarouselWidget> {
  int currentPage = 0;
  List<Map<String, dynamic>> players = [];

  @override
  void initState(){
    loadJsonData("assets/data/player.json").then((data) {
      if (data != null) {
        setState(() {
          players = data;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 270,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image.asset(
                    "${players[index]['image']}",
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: players.length,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
          ),
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          bottom: 20.0,
          child: buildPageIndicator(),
        ),
      ],
    );
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(players.length, (index) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? colorWhite : colorBlack,
          ),
        );
      }),
    );
  }
}
