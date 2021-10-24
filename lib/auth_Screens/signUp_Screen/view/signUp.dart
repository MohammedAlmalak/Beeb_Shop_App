import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

bool showPass = true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        backgroundColor: Color(0xffF6F6F9),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 30.h,
                right: 0.w,
                child: IconButton(
                  iconSize: 30,
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_forward_rounded),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.w,
                ),
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40.h,
                      ),
                      child: Image.asset(
                        'assets/images/shop.png',
                        width: double.infinity,
                        height: 100.h,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'إنشاد حساب جديد',
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    Ui.textFeild(hintText: 'الإسم'),
                    SizedBox(height: 9.h),
                    Ui.textFeild(hintText: 'البريد الإلكتروني'),
                    SizedBox(height: 9.h),
                    Ui.textFeild(hintText: ' رقم الهاتف'),
                    SizedBox(height: 9.h),
                    Ui.bassTextFeild(
                        showPass: showPass,
                        onPressIcon: () {
                          setState(() {
                            showPass = !showPass;
                          });
                        }),
                    SizedBox(height: 9.h),
                    Ui.textFeild(hintText: ' العنوان'),
                    SizedBox(height: 15.h),
                    Ui.button(text: 'إنشاء حساب', onPressed: () {}),
                    SizedBox(height: 9.h),
                    Text(
                      ' يمكنك الإستمرار بواسطة',
                      style: TextStyle(
                        fontSize: 19.sp,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SignInButton(
                          Buttons.Facebook,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          mini: true,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Twitter,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          mini: true,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.AppleDark,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          mini: true,
                          onPressed: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () => Get.toNamed(Routes.LogIn),
                          child: Text(' سجل دخول ',
                              style: TextStyle(
                                  color: Color(0xff628CC6), fontSize: 17.sp)),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          'ليس لديك حساب؟',
                          style: TextStyle(fontSize: 17.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
