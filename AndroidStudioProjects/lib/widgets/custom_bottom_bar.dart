import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavBerandaWhiteA700,
      activeIcon: ImageConstant.imgNavBerandaWhiteA700,
      title: "Beranda",
      type: BottomBarEnum.Beranda,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavDonasiBlack900,
      activeIcon: ImageConstant.imgNavDonasiBlack900,
      title: "Donasi",
      type: BottomBarEnum.Donasi,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPenyaluran,
      activeIcon: ImageConstant.imgNavPenyaluran,
      title: "Penyaluran",
      type: BottomBarEnum.Penyaluran,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAkun,
      activeIcon: ImageConstant.imgNavAkun,
      title: "Akun",
      type: BottomBarEnum.Akun,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 18.v,
                  width: 19.h,
                  color: appTheme.black900,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargeBlack900Medium.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.fillAmber.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 18.v,
                    width: 20.h,
                    color: appTheme.whiteA700,
                    margin: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 7.v,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargeWhiteA700_1.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Beranda,
  Donasi,
  Penyaluran,
  Akun,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
