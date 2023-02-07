import 'package:flutter/material.dart';
import 'package:travel/src/ui/components/CustomSectionHeading.dart';
import 'package:travel/src/ui/components/tiles/MediumTile.dart';
import 'package:travel/src/ui/constants.dart';

class PopularPackageSection extends StatelessWidget {
  const PopularPackageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: 40, right: 24),
      child: Column(
        children: [
          CustomSectionHeading(heading: "Popular Package"),
          SizedBox(
            height: 20,
          ),
          MediumTile(
            locationName: Kuta.loationName,
            placeName: Kuta.placeName,
            isFav: Kuta.isFav,
            rating: Kuta.rating,
            ratingText: Kuta.ratingText,
            image: Kuta.resortImage,
            fullImage: Kuta.fullImage,
            longDescription: location.longDescription,
            price: Kuta.price,
            resortName: Kuta.resortName,
            description: location.description,
          ),
          MediumTile(
            locationName: Baga.loationName,
            placeName: Baga.placeName,
            isFav: Baga.isFav,
            rating: Baga.rating,
            ratingText: Baga.ratingText,
            image: Baga.resortImage,
            fullImage: Baga.fullImage,
            longDescription: location.longDescription,
            price: Baga.price,
            description: location.description,
            resortName: Baga.resortName,
          ),
        ],
      ),
    );
  }
}
