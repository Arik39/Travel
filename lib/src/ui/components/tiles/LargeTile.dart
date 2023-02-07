import 'package:flutter/material.dart';
import 'package:travel/src/ui/beachbookpage.dart';
import 'package:travel/src/ui/components/CustomRatingBar.dart';

class LargeTile extends StatelessWidget {
  final String locationName;
  final String placeName;
  final String ratingText;
  final double rating;
  final bool isFav;
  final String image;
  final String fullImage;
  final String longDescription;
  final String price;

  LargeTile({
    super.key,
    required this.locationName,
    required this.placeName,
    required this.ratingText,
    required this.rating,
    required this.isFav,
    required this.image,
    required this.fullImage,
    required this.longDescription,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BeachBookPage(
                        ratingText: ratingText,
                        rating: rating,
                        placeName: placeName,
                        locationName: locationName,
                        price: price,
                        fullImage: fullImage,
                        longDescription: longDescription,
                        isFav: isFav,
                      ),
                    ));
              },
              child: Container(
                height: 250,
                width: 186,
                child: Image.asset(image),
              ),
            ),
            Container(
              height: 250,
              width: 186,
              child: Container(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(top: 16, right: 16),
                  height: 32,
                  width: 32,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: isFav
                      ? Image.asset(
                          "assets/icons/heart.png",
                        )
                      : Image.asset(
                          "assets/icons/heart_outline.png",
                        ),
                ),
              ),
            ),
            Container(
              height: 250,
              width: 186,
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  top: 149.5,
                  left: 20,
                  bottom: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Text(
                        placeName,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Urbanist",
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: Image.asset(
                            "assets/icons/location.png",
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          locationName,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Urbanist",
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CustomRatingBar(
                            rating: rating,
                            ratingText: ratingText,
                            ratingTextColor: Colors.white),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
