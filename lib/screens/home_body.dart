import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/screens/category/category.dart';
import 'package:online_shop/screens/custom_appbar.dart';
import 'package:online_shop/screens/products/recent_products.dart';
import 'package:online_shop/screens/search_section.dart';
import 'package:online_shop/screens/slider/slider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 20),
              SearchSection(),
              SizedBox(height: 20),
              ProductSlider(),
              SizedBox(height: 20),
              Category(),
              SizedBox(height: 20),
              RecentProducts(),
            ],
          ),
        ),
      ),
    );
  }
}


