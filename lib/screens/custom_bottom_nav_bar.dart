import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/screens/enum.dart';
import 'package:online_shop/screens/home_screen.dart';
import 'package:online_shop/screens/main_pages/favorite_page.dart';
import 'package:online_shop/screens/main_pages/profile_page.dart';
import 'package:online_shop/screens/main_pages/shopping_cart_page.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectingMenu
  });

  final MenuState selectingMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0XFFDADADA)
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(
                Icons.home_filled,
                color: selectingMenu == MenuState.home ? kPrimaryColor : Colors.black87,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritePage()));
              },
              icon: Icon(
                Icons.favorite,
                color: selectingMenu == MenuState.favorite ? kPrimaryColor : Colors.black87,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartPage()));
              },
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: selectingMenu == MenuState.shoppingCart ? kPrimaryColor : Colors.black87,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              icon: Icon(
                Icons.person,
                color: selectingMenu == MenuState.profile ? kPrimaryColor : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
