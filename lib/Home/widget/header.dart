import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                        child: IconButton(
                          icon: Icon(Icons.shopping_cart_outlined),
                          onPressed: () {
                            Get.toNamed(Routes.ShoppingCart);
                          },
                        ),
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
                SizedBox(width: 12.w),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F6FC),
                      borderRadius: BorderRadius.all(Radius.circular(12.r))),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Get.toNamed(Routes.Search);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'مرحبا بك محمد',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
