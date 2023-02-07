import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final String ratingText;
  final Color ratingTextColor;

  const CustomRatingBar(
      {super.key,
      required this.rating,
      required this.ratingText,
      required this.ratingTextColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        RatingBar(
            itemSize: 16,
            minRating: 1,
            maxRating: 5,
            initialRating: rating,
            ratingWidget: RatingWidget(
              full: Image.asset(
                "assets/icons/star.png",
                color: Color.fromRGBO(252, 210, 64, 1),
              ),
              half: Image.asset(
                "assets/icons/star.png",
                color: Color.fromRGBO(243, 243, 243, 1),
              ),
              empty: Image.asset(
                "assets/icons/star.png",
                color: Color.fromRGBO(243, 243, 243, 1),
              ),
            ),
            onRatingUpdate: (v) {}),
        SizedBox(
          width: 5,
        ),
        Text(
          ratingText,
          style: TextStyle(
              color: ratingTextColor,
              fontFamily: "Urbanist",
              fontSize: 12,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
