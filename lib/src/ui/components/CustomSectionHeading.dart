import 'package:flutter/material.dart';

class CustomSectionHeading extends StatelessWidget {
  final String heading;

  const CustomSectionHeading({
    super.key,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: TextStyle(
              fontFamily: "Inter", fontWeight: FontWeight.w500, fontSize: 16),
        ),
        Text(
          "See all",
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        )
      ],
    );
  }
}
