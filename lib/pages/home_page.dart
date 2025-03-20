import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:minimal/notifier/carousel_notifier.dart';
import 'package:minimal/pages/widget/circular_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) {
                carouselManager.notifier.setPage(index);
                // disposableCarouselManager.notifier.setPage(index);
              },
            ),
            items: [
              RoundedContainer(imageUrl: "assets/shoes_banner_1.png"),
              RoundedContainer(imageUrl: "assets/shoes_banner_2.png"),
              RoundedContainer(imageUrl: "assets/shoes_banner_3.png"),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  backgroundColor: Colors.green,
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.all(2),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width = 250,
    this.height = 150,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.fit,
    this.backgroundColor = Colors.grey,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final BoxFit? fit;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(18),
          color: backgroundColor,
        ),
        child: ClipRRect(
          borderRadius:
              applyImageRadius ? BorderRadius.circular(18) : BorderRadius.zero,
          child: Image(
            image:
                isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl),
            fit: fit ?? BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
