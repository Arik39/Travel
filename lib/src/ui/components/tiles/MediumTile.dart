import 'package:flutter/material.dart';
import 'package:travel/src/ui/components/CustomRatingBar.dart';

class MediumTile extends StatelessWidget {
  final String resortName;
  final String price;
  final double rating;
  final String ratingText;
  final String description;
  final String image;
  final bool isFav;

  const MediumTile({
    super.key,
    required this.resortName,
    required this.price,
    required this.rating,
    required this.ratingText,
    required this.description,
    required this.image,
    required this.isFav,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(196, 196, 196, .4),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 19.17, horizontal: 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 116,
              width: 86,
              child: Image.asset(image),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 26,
                        child: Center(
                          child: Text(
                            resortName,
                            style: TextStyle(
                                fontFamily: "Urbanist",
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 21.65,
                        child: isFav
                            ? Image.asset(
                                "assets/icons/heart.png",
                              )
                            : Image.asset(
                                "assets/icons/heart_outline.png",
                                color: Color.fromRGBO(186, 186, 186, 1),
                              ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 24,
                    child: Text(
                      "₹" + price,
                      style: TextStyle(
                          fontFamily: "Urbanist",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(253, 91, 31, 1)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomRatingBar(
                    rating: rating,
                    ratingText: ratingText,
                    ratingTextColor: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontFamily: "Urbanist-Regular",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(118, 118, 118, 1)),
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
