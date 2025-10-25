import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategorySection(
            text: 'Mens',
            imagePath: 'assets/images/mens.png',
            onPress: () {},
          ),
          SizedBox(width: 10),
          CategorySection(
            text: 'Ladies',
            imagePath: 'assets/images/lady.png',
            onPress: () {},
          ),
          SizedBox(width: 10),
          CategorySection(
            text: 'Shoes',
            imagePath: 'assets/images/shoe.png',
            onPress: () {},
          ),
          SizedBox(width: 10),
          CategorySection(
            text: 'Ladies Bag',
            imagePath: 'assets/images/lady_bag.png',
            onPress: () {},
          ),

        ],
      ),
    );
  }
}


class CategorySection extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPress;

  const CategorySection({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryColor,
      child: InkWell(
        onTap: onPress,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(text),
              SizedBox(width: 10),
              Image.asset(imagePath, width: 30),
            ],
          ),
        ),
      ),
    );
  }
}
