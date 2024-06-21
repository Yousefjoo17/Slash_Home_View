import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slashtask/core/utils/assets_data.dart';

class ImagesListViewBig extends StatelessWidget {
  const ImagesListViewBig({
    super.key,
  });

  //final List<String> imagesUrls;
  //final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    List<String> imagesUrls = ["x", "s", "S"];
    return CarouselSlider(
      items: imagesUrls
          .map(
            (item) => Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  AssetsData.testImg,
                  fit: BoxFit.fill,
                  width: 1000,
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: 1.5,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.easeInOutQuart,
        onPageChanged: (index, reason) {
          //BlocProvider.of<SelectingImageCubit>(context).changePic(index);
        },
      ),
      //  carouselController: controller,
    );
  }
}
