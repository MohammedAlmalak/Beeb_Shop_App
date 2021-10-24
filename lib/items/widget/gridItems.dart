import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/items/view/itemDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GridItems extends StatelessWidget {
  const GridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 400.h,
      child: GridView.builder(
        padding: EdgeInsets.only(
          top: 5.h,
          right: 10.w,
          bottom: 20.h,
          left: 10.w,
        ),

        scrollDirection: Axis.vertical, shrinkWrap: true,
        itemCount: 10,
        // primary: true,
        // shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 210.h,
          crossAxisSpacing: 15.h,
          mainAxisSpacing: 7.w,
        ),
        itemBuilder: (c, i) => GestureDetector(
          onTap: () {
            Get.to(() => ItemDitails());
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Image.asset(
                          'assets/images/doha1.png',
                          fit: BoxFit.scaleDown,
                          height: 75.h,
                          width: 75.w,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.w),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              ' ارز الضحى 1  كيلو جرام',
                              textDirection: TextDirection.rtl,
                              softWrap: true,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.r)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  ' 50%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10.sp),
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: Ui.addCartButton(onPressed: () {
                          print(i);
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/* Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Image.asset(
                    'assets/images/doha1.png',
                    fit: BoxFit.scaleDown,
                    height: 75.h,
                    width: 75.w,
                  ),
                ),
                SizedBox(height: 5.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        ' ارز الضحى 1  كيلو جرام',
                        textDirection: TextDirection.rtl,
                        softWrap: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Ui.addCartButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );*/