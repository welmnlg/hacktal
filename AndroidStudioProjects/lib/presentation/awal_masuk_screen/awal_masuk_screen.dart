import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';

class AwalMasukScreen extends StatelessWidget {
  const AwalMasukScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.amber500.withOpacity(0.4),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.amber500.withOpacity(0.4),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgPageDataDiri,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 30.h,
              top: 168.v,
              right: 30.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogoSepakat22,
                  height: 202.v,
                  width: 288.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle178,
                  height: 61.v,
                  width: 224.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 25.h),
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 217.h,
                  margin: EdgeInsets.only(
                    left: 37.h,
                    right: 42.h,
                  ),
                  child: Text(
                    "Senyum dan Peduli Untuk Kecukupan Pangan Seluruh Rakyat",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeGray50,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
