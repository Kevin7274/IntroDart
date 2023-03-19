import 'package:aplicacion5b/screen/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
            pathImage: 'img/profile1.jpg',
            user: 'Apolonia Rodriguez',
            details: '1 review 5 photos',
            comment: 'This is an amazing place is in Sri Lanka'),
        Review(
            pathImage: 'img/profile2.jpg',
            user: 'Transito Martinez',
            details: '2 review, 3 photos',
            comment: 'great place'),
        Review(
            pathImage: 'img/profile3.jpg',
            user: 'Sinforoso Rodriguez',
            details: '1 review, 1 photos',
            comment: 'wonderful weather'),
        Review(
            pathImage: 'img/profile4.jpg',
            user: 'Pancrasia Jones',
            details: '3 review, 2 photos',
            comment: 'Beautiful place and nice people'),
      ],
    );
  }
}
