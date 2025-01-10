import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.backgroundImage,
      required this.subTitle,
      required this.centerImage,
      required this.title});
  final String backgroundImage;
  final String subTitle;
  final String centerImage;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  centerImage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('تخط'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 64,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Column(
            children: [
              title,
              SizedBox(
                height: 24,
              ),
              Text(
                textAlign: TextAlign.center,
                subTitle,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
