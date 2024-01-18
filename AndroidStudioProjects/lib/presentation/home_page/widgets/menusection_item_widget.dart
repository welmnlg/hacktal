import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MenusectionItemWidget extends StatelessWidget {
  const MenusectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgMenuBook,
          ),
        ),
        SizedBox(height: 1.v),
        SizedBox(
          height: 14.v,
          width: 53.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Edukasi",
                  style: CustomTextStyles.interGray800Bold,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Bantuan Pangan",
                  style: CustomTextStyles.interGray800,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
