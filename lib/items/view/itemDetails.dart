import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/items/widget/slider_Image_Item.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemDitails extends StatelessWidget {
  ItemDitails({Key? key}) : super(key: key);
  final description =
      'تقدم الضحى أرزًا ذهبيًّا عالي الجودة، يناسب الحميات الغذائية والأكلات الصحية. حيث يمتاز بنسبة منخفضة من الكربوهيدرات.';
  final way =
      'غسل الأرز جيداً بالماء إلى أن يصبح لونه شفافاً، ثمّ نقع الأرز في وعاء خلط متوسط بالماء الساخن لمدة خمس عشرة دقيقة. نقع الزعفران في فنجان مع ماء الورد لعدة دقائق. تسخين السمن مع الزيت في قدر متوسط العمق على نار متوسطة ثمّ إضافة الكمون، الكزبرة، الشومر، القرنفل، الفلفل، القرفة وورق الغار وتقليب البهارات حتى تتحمص وتتصاعد الرائحة. رفع الأرز من ماء السلق وسكبه على خليط البهارات مع التحريك لمدة ثلاث دقائق حتى يتشرب النكهات ثمّ إضافة الماء إلى الأرز وتركه على النار العالية إلى أن يغلي ويتشرب الأرز معظم الماء. خفض الحرارة وتغطية القدر وترك الأرز على النار لمدة عشرين دقيقة إلى أن ينضج تماماً.';

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        bottomNavigationBar: bottomCartButton(),
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
                    Row(
                      children: [
                        Text(
                          'تفاصيل المنتج',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
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
            SizedBox(height: 8.h),
            ImageSlider(),
            SizedBox(height: 8.h),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'التفاصيل',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        //SizedBox(height: 8.h),
                        Text(
                          description,
                          textDirection: TextDirection.rtl,
                          softWrap: true,
                          style: TextStyle(
                            height: 1,
                            wordSpacing: 0,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Text(
                          'طريقة التحضير',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(height: 8.h),
                        Text(
                          way,
                          textDirection: TextDirection.rtl,
                          softWrap: true,
                          style: TextStyle(
                            height: 1,
                            wordSpacing: 0,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          way,
                          textDirection: TextDirection.rtl,
                          softWrap: true,
                          style: TextStyle(
                            height: 1,
                            wordSpacing: 0,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomCartButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.favorite_border,
              size: 35,
              color: Colors.grey,
            ),
            Ui.addCartButton(
              width: 200.w,
              height: 40.h,
              fontSize: 15.sp,
              onPressed: () {
                print('taapeed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
