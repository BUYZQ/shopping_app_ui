import 'package:flutter/material.dart';
import 'package:online_shop/screens/custom_bottom_nav_bar.dart';
import 'package:online_shop/screens/enum.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectingMenu: MenuState.favorite),
    );
  }
}
