import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';

class DonasiEightScreen extends StatelessWidget {
  const DonasiEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 37.h,
            top: 99.v,
            right: 37.h,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 199.h,
                child: Text(
                  "Donasi \nTerkonfirmasi!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargeExtraBold,
                ),
              ),
              SizedBox(height: 37.v),
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 283.v,
                width: 286.h,
              ),
              SizedBox(height: 48.v),
              Text(
                "Terima kasih warga baik!",
                style: CustomTextStyles.titleLargeWhiteA700ExtraBold,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
