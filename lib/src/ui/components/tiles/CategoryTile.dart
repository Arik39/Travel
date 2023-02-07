import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String imagePath;
  final String tileText;
  final Color borderColor;

  CategoryTile(
      {required this.imagePath,
      required this.tileText,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 40, height: 40, child: Image.asset(imagePath)),
          SizedBox(
            width: 10,
          ),
          Text(
            tileText,
            style: TextStyle(
                fontFamily: "Urbanist",
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
