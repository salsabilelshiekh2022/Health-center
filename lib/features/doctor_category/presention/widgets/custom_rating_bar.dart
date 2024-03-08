import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({super.key, required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 12,
      unratedColor: Colors.white,
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
        size: 12,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
