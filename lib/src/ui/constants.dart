class location {
  static String description =
      "A resort is a place used for vacation, relaxation or as a day...";
  static String longDescription =
      "One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.";
}

class Kuta extends location {
  static String placeName = "Kuta Beach";
  static String loationName = "Bali, Indonesia";
  static String ratingText = "4.2";
  static String price = "20,000";
  static String resortName = "Kuta Resort";
  static double rating = 4;
  static bool isFav = true;
  static String image = "assets/images/kutabeach.png";
  static String fullImage = "assets/images/kutabeachfull.png";
  static String resortImage = 'assets/images/kutabeachresort.png';
}

class Baga extends location {
  static String placeName = "Baga Beach";
  static String loationName = "Goa, India";
  static String ratingText = "4.8";
  static String price = "15,000";
  static String resortName = "Baga Beach Resort";
  static double rating = 4;
  static bool isFav = false;
  static String image = "assets/images/bagabeach.png";
  static String fullImage = "assets/images/bagabeachfull.png";
  static String resortImage = 'assets/images/bagabeachresort.png';
}
