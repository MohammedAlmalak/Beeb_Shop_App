import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetNewPass extends StatelessWidget {
  const SetNewPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (_, __) => Scaffold(
        backgroundColor: Color(0xffF6F6F9),
        body: SingleChildScrollView(
          physics: ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35.w,
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 150.h,
                  ),
                  child: Image.asset(
                    'assets/images/shop.png',
                    width: double.infinity,
                    height: 135.h,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 25.h),
                Text(
                  'كلمة المرور الجديدة',
                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'قم بإدخال كلمة المرور الجديدة',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Ui.bassTextFeild(showPass: true, text: 'كلمة المرور الجديدة'),
                SizedBox(height: 10.h),
                Ui.bassTextFeild(showPass: false, text: 'تأكيد كلمة المرور الجديدة'),
                SizedBox(height: 25.h),
                Ui.button(text: 'حفظ', onPressed: () {}),
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
