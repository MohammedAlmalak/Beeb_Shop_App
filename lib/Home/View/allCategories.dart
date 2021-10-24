import 'package:beeb_shop/items/view/subCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AllCategories extends StatelessWidget {
  AllCategories({Key? key}) : super(key: key);
  final categoryImage = [
    'milk.png',
    'rise1.png',
    'cleens.png',
    'meets.png',
  ];
  final categoryName = [
    'منتجات الالبان',
    'مكرونة وارز وبقوليات',
    'منظفات',
    'لحوم',
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        backgroundColor: Color(0xffF4F6FC),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                color: Color(0xffF4F6FC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.r))),
                            child: Icon(Icons.shopping_cart_outlined),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 14.w,
                            height: 14.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'الأقسام',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: Icon(Icons.arrow_forward_rounded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 520.h,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                reverse: false,
                scrollDirection: Axis.vertical,
                itemCount: categoryImage.length,
                // primary: true,
                // shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 150.w,
                  crossAxisSpacing: 7.h,
                  mainAxisSpacing: 7.w,
                ),
                itemBuilder: (c, i) => GestureDetector(
                  onTap: () {
                    Get.to(() => SubCategory(
                          title: categoryName[i],
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/${categoryImage[i]}',
                          width: 80.w,
                          height: 80.h,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          categoryName[i],
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
