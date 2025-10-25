import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.dashboard,
                  color: kPrimaryColor,
                ),
              );
            },
          ),
        ),
        Column(
          children: [
            Text('Umair'),
            Text(
              'Lahore, PKR',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        CircleAvatar(backgroundColor: kPrimaryColor),
      ],
    );
  }
}
