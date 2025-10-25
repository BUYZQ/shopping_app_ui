import 'package:flutter/material.dart';
import 'package:online_shop/screens/custom_bottom_nav_bar.dart';
import 'package:online_shop/screens/enum.dart';

import 'home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectingMenu: MenuState.home),
    );
  }
}

