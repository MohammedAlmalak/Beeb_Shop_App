import 'package:beeb_shop/Home/widget/bestSale.dart';
import 'package:beeb_shop/Home/widget/categories.dart';
import 'package:beeb_shop/Home/widget/header.dart';
import 'package:beeb_shop/Home/widget/sales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeService extends StatelessWidget {
  const HomeService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (_, __) => Scaffold(
          bottomNavigationBar: BottomNavigationBarWedgit(),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 46.h),
                  child: HeaderWidget(),
                ),
                SizedBox(height: 15.h),
                CategoriesWidget(),
                SalesWidget(),
                BestSaleWidget(),
              ],
            ),
          )),
    );
  }
}

class BottomNavigationBarWedgit extends StatelessWidget {
  const BottomNavigationBarWedgit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'الرئيسية',
          icon: Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: 'طلباتي',
          icon: Icon(Icons.list_alt),
        ),
        BottomNavigationBarItem(
          label: 'نقاطي',
          icon: Icon(Icons.monetization_on),
        ),
        BottomNavigationBarItem(
          label: 'المفضلة',
          icon: Icon(
            Icons.favorite,
          ),
        ),
        BottomNavigationBarItem(
          label: 'حسابي',
          icon: Icon(Icons.person_outline),
        ),
      ],
    );
  }
}
