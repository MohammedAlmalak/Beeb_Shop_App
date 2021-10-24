import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSlider extends StatefulWidget {
  ImageSlider({Key? key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final _controller = CarouselController();

  var items = [
    ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'assets/images/milk.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'assets/images/meets.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    Image.asset(
      'assets/images/doha1.png',
      fit: BoxFit.fitHeight,
    ),
  ];

  var _cuttentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100.h,
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                aspectRatio: 5,
                enlargeCenterPage: true,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 7),
                height: 360,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _cuttentIndex = index;
                  });
                },
              ),
              items: items,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          DotsIndicator(
            dotsCount: items.length,
            position: _cuttentIndex.toDouble(),
            decorator: DotsDecorator(
              spacing: EdgeInsets.all(3),
              color: Color(0xffDCF0E8), // Inactive color
              activeColor: Color(0xff0C74BC),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'ارز الضحى 1 كيلو غرام',
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      ' 50%',
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                  ),
                ),
                SizedBox(width: 18.w),
                Row(
                  children: [
                    Text(
                      '10 دينار',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      ' 5 دينار',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
