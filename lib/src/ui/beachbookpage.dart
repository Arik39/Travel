import 'package:flutter/material.dart';
import 'package:travel/src/ui/components/CustomRatingBar.dart';

class BeachBookPage extends StatelessWidget {
  final String placeName;
  final String locationName;
  final String fullImage;
  final double rating;
  final String ratingText;
  final String price;
  final String longDescription;
  final bool isFav;

  const BeachBookPage(
      {Key? key,
      required this.placeName,
      required this.locationName,
      required this.rating,
      required this.ratingText,
      required this.price,
      required this.fullImage,
      required this.longDescription,
      required this.isFav})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(fullImage),
            fit: BoxFit.fill,
          )),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/black.png"),
                  alignment: Alignment.bottomCenter)),
        ),
        Container(
          padding: EdgeInsets.only(top: 50, left: 25, right: 24),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: 16,
                        width: 16,
                        child: Image.asset(
                          "assets/icons/back.png",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: isFav
                          ? Image.asset(
                              "assets/icons/heart.png",
                            )
                          : Image.asset(
                              "assets/icons/heart_outline.png",
                              color: Colors.white,
                            ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 23),
                    height: 25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            placeName,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Urbanist",
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      longDescription,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Urbanist-Regular",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.41,
                          height: 1.8),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: CustomRatingBar(
                        rating: rating,
                        ratingText: ratingText,
                        ratingTextColor: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹" + price + "/person",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          height: 45,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(252, 210, 64, 1.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: () {},
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Urbanist",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
