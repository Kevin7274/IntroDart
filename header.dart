import 'package:aplicacion5b/screen/gradient.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion5b/screen/card_image_list.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GradientBack(title: 'Popular'),
        CardImageList(),
      ],
    );
  }
}
