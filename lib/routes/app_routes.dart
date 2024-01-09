import 'package:flutter/material.dart';
import 'package:testapp/presentation/frame_seven_screen/frame_seven_screen.dart';
import 'package:testapp/presentation/my_bag_screen/my_bag_screen.dart';
import 'package:testapp/presentation/catalog_two_screen/catalog_two_screen.dart';
import 'package:testapp/presentation/product_screen/product_screen.dart';
import 'package:testapp/presentation/catalog_three_screen/catalog_three_screen.dart';
import 'package:testapp/presentation/app_navigation_screen/app_navigation_screen.dart';


class AppRoutes {
  static const String frameSevenScreen = '/frame_seven_screen';
  static const String myBagScreen = '/my_bag_screen';
  static const String catalogTwoScreen = '/catalog_two_screen';
  static const String productScreen = '/product_screen';
  static const String catalogThreeScreen = '/catalog_three_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String catalogThreeRoute = '/catalog_three';

  static Map<String, WidgetBuilder> routes = {
    frameSevenScreen: (context) => FrameSevenScreen(),
    myBagScreen: (context) => MyBagScreen(),
    catalogTwoScreen: (context) => CatalogTwoScreen(),
    productScreen: (context) => ProductScreen(),
    catalogThreeScreen: (context) => CatalogThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    catalogThreeRoute: (context) => CatalogThreeScreen(),

  };
}
