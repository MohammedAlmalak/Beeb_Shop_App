import 'package:beeb_shop/items/view/subCategory.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key}) : super(key: key);
  final categoryImage = [
    'milk.png',
    'rise1.png',
    'cleens.png',
    'meets.png',
  ];
  final categoryName = [
    'منتجات الالبان',
    'مكرونة وبقوليات',
    'منظفات',
    'لحوم',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Get.toNamed(Routes.AllCategeroies),
                  child: Text(
                    'عرض الكل',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  'الأقسام',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.only(right: 13.w),
              child: ListView.builder(
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryImage.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(5.0.sp),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => SubCategory(
                            title: categoryName[index],
                          ));
                    },
                    child: Container(
                      width: 97.w,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F6FC),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.r))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Image.asset(
                                'assets/images/${categoryImage[index]}',
                                width: 60.w,
                                height: 60.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Text(
                            categoryName[index],
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
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
