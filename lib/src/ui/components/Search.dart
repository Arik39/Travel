import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Where do you \nwant to explore today?",
            textAlign: TextAlign.justify,
            overflow: TextOverflow.clip,
            maxLines: 2,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
            ),
            textDirection: TextDirection.ltr,
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: const TextStyle(
                  fontFamily: 'Gilroy-ExtraBold',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Color.fromRGBO(0, 0, 0, 0.03),
                isDense: true,
                contentPadding:
                    EdgeInsets.only(left: 16, top: 14.5, bottom: 16.5)),
            cursorColor: Color.fromRGBO(0, 0, 0, 0.2),
          ),
        ],
      ),
    );
  }
}
