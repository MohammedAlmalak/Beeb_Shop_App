import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (_, __) => Scaffold(
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
                  horizontal: 35.w,
                ),
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 85.h,
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
                      'تسجيل الدخول',
                      style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    Ui.textFeild(hintText: 'البريد الإلكتروني او رقم الهاتف'),
                    SizedBox(height: 15.h),
                    Ui.bassTextFeild(
                        showPass: showPass,
                        onPressIcon: () {
                          setState(() {
                            showPass = !showPass;
                          });
                        }),
                    SizedBox(height: 20.h),
                    Ui.button(text: 'تسجيل الدخول', onPressed: () {}),
                    SizedBox(height: 15.h),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.ChangePass),
                      child: Text(
                        ' نسيت كلمة المرور؟',
                        style: TextStyle(
                          color: Color(0xff0C74C3),
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      ' يمكنك الإستمرار بواسطة',
                      style: TextStyle(
                        fontSize: 19.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
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
                          onTap: () => Get.toNamed(Routes.SignUp),
                          child: Text(' سجل معنا ', style: TextStyle(color: Color(0xff628CC6), fontSize: 17.sp)),
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
