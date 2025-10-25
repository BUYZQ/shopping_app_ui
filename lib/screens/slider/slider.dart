import 'dart:async';

import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {

  final PageController _pageController = PageController(initialPage: 0);

  List<BannerModel> listBanners = [
    BannerModel(imagePath: 'assets/images/banner.png', id: "1",),
    BannerModel(imagePath: 'assets/images/banner.png', id: "2"),
    BannerModel(imagePath: 'assets/images/banner.png', id: "3"),
    BannerModel(imagePath: 'assets/images/banner.png', id: "4"),
  ];

  @override
  void initState() {
    changePageTimer();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BannerCarousel(
      pageController: _pageController,
      margin: EdgeInsets.zero,
      viewportFraction: 0.9,
      banners: listBanners,
      customizedIndicators: IndicatorModel.animation(width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
      height: 200,
      activeColor: Colors.amberAccent,
      disableColor: Colors.white,
      animation: true,
      borderRadius: 10,
      width: double.infinity,
      indicatorBottom: false,
      spaceBetween: 5,
    );
  }

  void changePageTimer() {
    Timer.periodic(Duration(seconds: 3), (time) {
      if(_pageController.page == 3) {
        _pageController.jumpToPage(0);
        return;
      }
      if(time.tick >= 3) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 600),
          curve: Curves.ease,
        );
      }
    });
  }
}
