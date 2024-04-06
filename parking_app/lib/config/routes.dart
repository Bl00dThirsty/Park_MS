import 'package:get/get.dart';
import 'package:parking_app/pages/MapPage.dart';
import 'package:parking_app/pages/about_us/about_us.dart';
import 'package:parking_app/pages/homepage/homepage.dart';

var pages = [
  GetPage(
    name: '/homepage',
    page: () => const HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/about-us',
    page: () => const AboutUs(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/map-page',
    page: () => const MapPage(),
    transition: Transition.fade,
  ),
];
