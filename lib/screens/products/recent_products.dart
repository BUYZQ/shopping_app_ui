import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';

class RecentProducts extends StatelessWidget {
  RecentProducts({super.key});

  final productsList = [
    {
      "name": "White Shirt",
      "image": "assets/images/fashion1.png",
      "price": 50,
      "disc": "Material: Georgette; Comfortable and Breathable to wear",
    },
    {
      "name": "White Shirt",
      "image": "assets/images/fashion2.png",
      "price": 50,
      "disc": "Material: Georgette; Comfortable and Breathable to wear",
    },
    {
      "name": "White Shirt",
      "image": "assets/images/fashion2.png",
      "price": 50,
      "disc": "Material: Georgette; Comfortable and Breathable to wear",
    },
    {
      "name": "White Shirt",
      "image": "assets/images/fashion1.png",
      "price": 50,
      "disc": "Material: Georgette; Comfortable and Breathable to wear",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: productsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          return RecentSignleProducts(
            recent_signle_prod_name: productsList[index]['name'],
            recent_signle_prod_image: productsList[index]['image'],
            recent_signle_prod_price: productsList[index]['price'],
            recent_signle_prod_disc: productsList[index]['disc'],
          );
        },
      ),
    );
  }
}

class RecentSignleProducts extends StatefulWidget {
  final recent_signle_prod_name;
  final recent_signle_prod_image;
  final recent_signle_prod_price;
  final recent_signle_prod_disc;

  RecentSignleProducts({
    super.key,
    this.recent_signle_prod_name,
    this.recent_signle_prod_image,
    this.recent_signle_prod_price,
    this.recent_signle_prod_disc,
  });

  @override
  State<RecentSignleProducts> createState() => _RecentSignleProductsState();
}

class _RecentSignleProductsState extends State<RecentSignleProducts> {

  bool isLike = false;
  final Color inactiveColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(widget.recent_signle_prod_image),
        ),
        ListTile(
          title: Text('${widget.recent_signle_prod_name}'),
          subtitle: Text('\$${widget.recent_signle_prod_price}'),
          trailing: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
              icon: Icon(
                isLike ? Icons.favorite : Icons.favorite_border,
                size: 20,
                color: isLike ? Colors.red : inactiveColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
