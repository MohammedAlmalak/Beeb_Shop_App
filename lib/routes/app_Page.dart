import 'package:beeb_shop/Home/View/allCategories.dart';
import 'package:beeb_shop/Home/View/homeService.dart';
import 'package:beeb_shop/auth_Screens/changePass/view/acceptCode.dart';
import 'package:beeb_shop/auth_Screens/changePass/view/changePass.dart';
import 'package:beeb_shop/auth_Screens/changePass/view/setNewPass.dart';
import 'package:beeb_shop/auth_Screens/choseWayAuth/view/choseAuthWay.dart';
import 'package:beeb_shop/auth_Screens/login_screen/view/login.dart';
import 'package:beeb_shop/auth_Screens/signUp_Screen/view/signUp.dart';
import 'package:beeb_shop/search/view/search.dart';
import 'package:beeb_shop/shoppingCart/view/Cart.dart';
import 'package:get/get.dart' show GetPage; // Transition

import 'routes.dart';

class AppPages {
  static const INITIAL = Routes.ChoseAuthWay;

  static final routes = [
    GetPage(
      name: Routes.ChoseAuthWay,
      page: () => ChoseAuthWay(), /*  binding: RootBinding() */
    ),
    GetPage(
      name: Routes.LogIn,
      page: () => Login(),
    ),
    GetPage(
      name: Routes.SignUp,
      page: () => SignUp(),
    ),
    GetPage(
      name: Routes.ChangePass,
      page: () => ChangePass(),
    ),
    GetPage(
      name: Routes.AcceptCode,
      page: () => AcceptCode(),
    ),
    GetPage(
      name: Routes.SetNewPass,
      page: () => SetNewPass(),
    ),
    GetPage(
      name: Routes.HomeService,
      page: () => HomeService(),
    ),
    GetPage(
      name: Routes.AllCategeroies,
      page: () => AllCategories(),
    ),
    GetPage(
      name: Routes.ShoppingCart,
      page: () => Cart(),
    ),
    GetPage(
      name: Routes.Search,
      page: () => Search(),
    ),
  ];
}
