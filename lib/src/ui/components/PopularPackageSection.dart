import 'package:flutter/material.dart';
import 'package:travel/src/ui/components/CustomSectionHeading.dart';
import 'package:travel/src/ui/components/tiles/MediumTile.dart';

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
            image: "assets/images/kutabeachresort.png",
            resortName: "Kuta Resort",
            price: "20,000",
            rating: 4,
            ratingText: "4,8",
            description:
                "A resort is a place used for vacation, relaxation or as a day...",
            isFav: false,
          ),
          MediumTile(
            image: "assets/images/bagabeachresort.png",
            resortName: "Baga Beach Resort",
            price: "15,000",
            rating: 4,
            ratingText: "4,8",
            description:
                "A resort is a place used for vacation, relaxation or as a day...",
            isFav: false,
          ),
        ],
      ),
    );
  }
}
