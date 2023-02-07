import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                  maxRadius: 16,
                  backgroundColor: Color.fromRGBO(217, 217, 217, 1)),
              SizedBox(
                width: 10,
              ),
              Text(
                "Hello, Vineetha",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
            ],
          ),
          Image.asset("assets/icons/lamp.png"),
        ],
      ),
    );
  }
}
