import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class CustomRatingBar extends StatefulWidget {
  const CustomRatingBar({super.key});

  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  double rating = 3;
  void updateRating(double value) {
    setState(() {
      rating = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PannableRatingBar(
        rate: rating,
        onChanged: updateRating,
        spacing: 2,
        items: List.generate(
          5,
          (index) => const RatingWidget(
            selectedColor: Color(0xFFFFE664),
            unSelectedColor: Color(0xFFD9D9D9),
            child: Icon(
              Icons.star,
              size: 42,
            ),
          ),
        ),
      ),
    );
  }
}
