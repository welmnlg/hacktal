import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class DonationgridItemWidget extends StatelessWidget {
  const DonationgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle20,
      height: 75.v,
      width: 110.h,
    );
  }
}
