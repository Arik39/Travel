import 'package:flutter/material.dart';
import 'package:travel/src/ui/components/ChooseCatagorySection.dart';

import 'package:travel/src/ui/components/CustomAppBar.dart';
import 'package:travel/src/ui/components/PopularPackageSection.dart';
import 'package:travel/src/ui/components/Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomAppBar(),
              Search(),
              ChooseCatagorySection(),
              PopularPackageSection(),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
