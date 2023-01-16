import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carrousel extends StatelessWidget {
  const Carrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 0.8, height: 200.0, autoPlay: true),
        items: [
          ("assets/images/baki.jpg"),
          ("assets/images/lake.jpg"),
          ("assets/images/goku2.jpg"),
          ("assets/images/goku.jpg"),
        ].map((e) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: 500,
                child: Image.asset(
                  e,
                  fit: BoxFit.cover,
                ), 
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
