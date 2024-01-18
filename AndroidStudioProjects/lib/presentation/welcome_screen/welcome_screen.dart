import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
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
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 159.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 109.v,
                  width: 264.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle178,
                        height: 46.v,
                        width: 147.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 25.h,
                          bottom: 23.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLogoSepakat22,
                        height: 92.v,
                        width: 113.h,
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Selamat Datang di SEPAKAT",
                          style: CustomTextStyles.titleLargeWhiteA700SemiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  text: "Mulai Sekarang",
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientCyanToPrimaryDecoration,
                ),
                SizedBox(height: 17.v),
                Text(
                  "Sebelumnya, lengkapi data diri kamu dulu yuk",
                  style: CustomTextStyles.titleSmallGray100,
                ),
                SizedBox(height: 19.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
