import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse8,
                height: 27.adaptSize,
                width: 27.adaptSize,
                radius: BorderRadius.circular(
                  13.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Anonim Pertama",
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    Text(
                      "20 menit lalu",
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Container(
            width: 260.h,
            margin: EdgeInsets.only(right: 47.h),
            child: Text(
              "Semoga bantuan yang saya berikan bisa bermanfaat untuk\nmakan sehari hari keluarga penerima manfaat...aamiin...",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBlack90010.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
