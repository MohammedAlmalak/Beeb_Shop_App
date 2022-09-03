import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AcceptCode extends StatelessWidget {
  const AcceptCode({Key? key}) : super(key: key);
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
                      'كود التأكيد',
                      style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'لقد قمنا بإرسال كود الى',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
                    ),
                    Text(
                      '0799363995',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(
                      'قم بإدخال الكود لتتمكن من الإستمرار',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    PinCodeTextField(
                      appContext: context,
                      // controller: ,
                      keyboardType: TextInputType.number,
                      length: 4,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12.r),
                        fieldHeight: 50.h,
                        fieldWidth: 50.w,
                        activeColor: Color(0xff3BC14A),
                        borderWidth: 1,
                        selectedColor: Color(0xff0C74C3),
                        inactiveColor: Colors.grey[400],
                      ),
                      onChanged: (v) {
                        print(v);
                      },
                      onCompleted: (v) {
                        print("Completed");
                      },
                    ),
                    SizedBox(height: 15.h),
                    Ui.button(
                        text: 'إستمرار',
                        onPressed: () {
                          Get.toNamed(Routes.SetNewPass);
                        }),
                    SizedBox(height: 80.h),
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
