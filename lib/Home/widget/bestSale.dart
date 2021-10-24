import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/items/view/itemDetails.dart';
import 'package:beeb_shop/items/view/subCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BestSaleWidget extends StatelessWidget {
  const BestSaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 250,
      color: Color(0xffF4F6FC),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => SubCategory(title: 'افضل العروض'));
                  },
                  child: Text(
                    'عرض الكل',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                Text(
                  'أفضل العروض',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //SizedBox(height: 7.h),
          Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 400.h,
            child: GridView.builder(
              padding: EdgeInsets.only(
                top: 5.h,
                right: 8.w,
                bottom: 10.h,
              ),
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
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
                  Get.to(() => ItemDitails());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        left: 0.w,
                        top: 0.h,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        top: 0.h,
                        left: 45.w,
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.h),
                          child: Image.asset(
                            'assets/images/doha1.png',
                            fit: BoxFit.fill,
                            height: 75.h,
                            width: 75.w,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100.h,
                        right: 5.w,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            ' ارز الضجى 1 كيلو جرام',
                            textDirection: TextDirection.rtl,
                            softWrap: true,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130.h,
                        right: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
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
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 5.h),
                        child: Ui.addCartButton(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /*   Container(
                            height: 70.h,
                            width: 80.w,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Image.asset(
                                'assets/images/doha1.png',
                                fit: BoxFit.fill,
                                //height: 70.h,
                                //width: 75.w,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                ' ارز الضجى 1 كيلو جرام',
                              ),
                            ),
                          ),
                          //SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 30.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.r)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    ' 50%',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.sp),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '10 دينار',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
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
                          SizedBox(height: 7.h),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 8.w,
                                left: 8.w,
                                bottom: 6.h,
                              ),
                              child: Ui.addCartButton(),
                            ),
                          ),  */
            /* ListView.builder(
                reverse: true,
                padding: EdgeInsets.only(right: 7.w),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.all(5.0.sp),
                      child:  
                    )), */
          ),
        ],
      ),
    );
  }
}
/*  Container(
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12.r)),
                        ),
                        child: Stack(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10.h),
                                  width: 100.w,
                                  height: 90.h,
                                  child: Image.asset(
                                    'assets/images/doha1.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      ' ارز الضجى 1 كيلو جرام',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 31.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12.r)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            ' 50%',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.sp),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '10 دينار',
                                            textDirection: TextDirection.rtl,
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
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
                                SizedBox(height: 7.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.w,
                                  ),
                                  child: Ui.addCartButton(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),*/