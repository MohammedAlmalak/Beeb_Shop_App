import 'package:beeb_shop/items/widget/gridItems.dart';
import 'package:beeb_shop/items/widget/listItems.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubCategory extends StatefulWidget {
  SubCategory({Key? key, this.title}) : super(key: key);
  final title;

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  var type = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (_, __) => Scaffold(
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
                            decoration: BoxDecoration(color: Color(0xffF4F6FC), borderRadius: BorderRadius.all(Radius.circular(12.r))),
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
                    Row(
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5.w),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                width: double.infinity,
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              type = 0;
                            });
                          },
                          child: Icon(
                            Icons.grid_view_rounded,
                            color: type == 0 ? Color(0xff0C74BC) : Colors.black,
                            size: 30.sp,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        InkWell(
                          onTap: () {
                            setState(() {
                              type = 1;
                            });
                          },
                          child: Icon(
                            Icons.list_rounded,
                            size: 35.sp,
                            color: type == 1 ? Color(0xff0C74BC) : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '23 عنصر',
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: type == 0 ? GridItems() : ListItems(),
            ),
          ],
        ),
      ),
    );
  }
}
