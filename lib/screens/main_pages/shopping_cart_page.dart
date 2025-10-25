import 'package:flutter/material.dart';
import 'package:online_shop/screens/custom_bottom_nav_bar.dart';
import 'package:online_shop/screens/enum.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart Page'),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectingMenu: MenuState.shoppingCart),
    );
  }
}
