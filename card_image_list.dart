import 'package:aplicacion5b/screen/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(pathImage: 'img/place1.jpg'),
          CardImage(pathImage: 'img/place2.jpg'),
          CardImage(pathImage: 'img/place3.jpg'),
          CardImage(pathImage: 'img/place4.jpg'),
        ],
      ),
    );
  }
}
