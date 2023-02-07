import 'package:flutter/material.dart';
import 'package:travel/src/ui/components/CustomSectionHeading.dart';
import 'package:travel/src/ui/components/tiles/CategoryTile.dart';
import 'package:travel/src/ui/components/tiles/LargeTile.dart';

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
                      locationName: 'Bali, Indonesia',
                      placeName: "Kuta Beach",
                      isFav: true,
                      rating: 4,
                      ratingText: "4,2",
                      image: "assets/images/kutabeach.png",
                      fullImage: "assets/images/kutabeachfull.png",
                      longDescription:
                          "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
                      price: "20,000"),
                  SizedBox(
                    width: 20,
                  ),
                  LargeTile(
                    locationName: 'Goa , India',
                    placeName: "Baga Beach",
                    isFav: false,
                    rating: 4,
                    ratingText: "4,8",
                    image: "assets/images/bagabeach.png",
                    fullImage: "assets/images/bagabeachfull.png",
                    longDescription:
                        "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
                    price: '15,000',
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
