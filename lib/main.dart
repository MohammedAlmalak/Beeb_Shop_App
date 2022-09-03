import 'package:beeb_shop/routes/app_Page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp()
      /* DevicePreview(
      enabled: !bool.fromEnvironment('dart.vm.product', defaultValue: false),
      builder: (context) => MyApp()) */
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Beeb Shop',
        defaultTransition: Transition.zoom,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        // home: Grid(),
      ),
      designSize: Size(360, 690),
    );
  }
}
