import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/presentation/riwayat_donasi_screen/riwayat_donasi_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/lacak_penerima_screen/lacak_penerima_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/lacak_penerima_one_screen/lacak_penerima_one_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/home_container_screen/home_container_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/donasi_two_screen/donasi_two_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/donasi_eight_screen/donasi_eight_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/donasi_nine_screen/donasi_nine_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/page_data_diri_one_screen/page_data_diri_one_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/welcome_screen/welcome_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/awal_masuk_screen/awal_masuk_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/register_one_screen/register_one_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/login_one_screen/login_one_screen.dart';
import 'package:imanuel_mt_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String riwayatDonasiScreen = '/riwayat_donasi_screen';

  static const String lacakPenerimaScreen = '/lacak_penerima_screen';

  static const String lacakPenerimaOneScreen = '/lacak_penerima_one_screen';

  static const String donasiPage = '/donasi_page';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String donasiTwoScreen = '/donasi_two_screen';

  static const String donasiEightScreen = '/donasi_eight_screen';

  static const String donasiNineScreen = '/donasi_nine_screen';

  static const String pageDataDiriOneScreen = '/page_data_diri_one_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String awalMasukScreen = '/awal_masuk_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    awalMasukScreen: (context) => AwalMasukScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    registerOneScreen: (context) => RegisterOneScreen(),
    riwayatDonasiScreen: (context) => RiwayatDonasiScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    lacakPenerimaScreen: (context) => LacakPenerimaScreen(),
    lacakPenerimaOneScreen: (context) => LacakPenerimaOneScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    donasiTwoScreen: (context) => DonasiTwoScreen(),
    donasiEightScreen: (context) => DonasiEightScreen(),
    donasiNineScreen: (context) => DonasiNineScreen(),
    pageDataDiriOneScreen: (context) => PageDataDiriOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
