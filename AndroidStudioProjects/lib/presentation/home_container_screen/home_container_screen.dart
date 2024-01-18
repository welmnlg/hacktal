import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/presentation/donasi_page/donasi_page.dart';
import 'package:imanuel_mt_s_application2/presentation/home_page/home_page.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Beranda:
        return AppRoutes.homePage;
      case BottomBarEnum.Donasi:
        return AppRoutes.donasiPage;
      case BottomBarEnum.Penyaluran:
        return "/";
      case BottomBarEnum.Akun:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.donasiPage:
        return DonasiPage();
      default:
        return DefaultWidget();
    }
  }
}
