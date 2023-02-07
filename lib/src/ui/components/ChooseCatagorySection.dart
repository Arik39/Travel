import 'package:flutter/material.dart';
import 'package:travel/src/ui/components/CustomSectionHeading.dart';
import 'package:travel/src/ui/components/tiles/CategoryTile.dart';
import 'package:travel/src/ui/components/tiles/LargeTile.dart';
import 'package:travel/src/ui/constants.dart';

class ChooseCatagorySection extends StatelessWidget {
  const ChooseCatagorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        top: 30,
        right: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSectionHeading(heading: "Choose Category"),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryTile(
                      imagePath: "assets/icons/beach.png",
                      borderColor: Color.fromRGBO(93, 199, 32, 1),
                      tileText: "Beach"),
                  SizedBox(
                    width: 20,
                  ),
                  CategoryTile(
                      imagePath: "assets/icons/mountain.png",
                      borderColor: Color.fromRGBO(218, 218, 218, 1),
                      tileText: "Mountain"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LargeTile(
                      locationName: Kuta.loationName,
                      placeName: Kuta.placeName,
                      isFav: Kuta.isFav,
                      rating: Kuta.rating,
                      ratingText: Kuta.ratingText,
                      image: Kuta.image,
                      fullImage: Kuta.fullImage,
                      longDescription: location.longDescription,
                      price: Kuta.price),
                  SizedBox(
                    width: 20,
                  ),
                  LargeTile(
                    locationName: Baga.loationName,
                    placeName: Baga.placeName,
                    isFav: Baga.isFav,
                    rating: Baga.rating,
                    ratingText: Baga.ratingText,
                    image: Baga.image,
                    fullImage: Baga.fullImage,
                    longDescription: location.longDescription,
                    price: Baga.price,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
