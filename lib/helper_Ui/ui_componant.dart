import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ui {
  static Widget textFeild({required String hintText}) {
    return TextField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.w),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff0B73B7)),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
      ),
    );
  }

  static Widget bassTextFeild(
      {required bool showPass, void Function()? onPressIcon, String? text}) {
    return TextField(
      obscureText: showPass,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        prefixIcon: IconButton(
            color: Color(0xff6D686D),
            onPressed: onPressIcon,
            icon: showPass
                ? Icon(Icons.remove_red_eye)
                : Icon(Icons.visibility_off_outlined)),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.w),
        hintText: text == null ? 'كلمة المرور' : text,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff0B73B7)),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
      ),
    );
  }

  static Widget button(
      {required String text, required void Function()? onPressed}) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 20.sp),
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.only(top: 6.h, bottom: 6.h)),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0B73B7)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
          ),
        ),
      ),
    );
  }

  static Widget addCartButton(
      {void Function()? onPressed,
      double? width,
      double? height,
      double? fontSize}) {
    return Container(
      height: height != null ? height : 28.h,
      width: width != null ? width : double.infinity,
      child: ElevatedButton(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'إضافة لعربة التسوق',
              style: TextStyle(
                  fontSize: fontSize != null ? fontSize : 10.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Icon(
              Icons.shopping_cart_outlined,
              size: 15,
              color: Colors.white,
            ),
          ],
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          /*  padding: MaterialStateProperty.all<
                                                  EdgeInsets>(
                                              EdgeInsets.symmetric(
                                                  horizontal: 50.w)), */
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0B73B7)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
            ),
          ),
        ),
      ),
    );
  }
}
