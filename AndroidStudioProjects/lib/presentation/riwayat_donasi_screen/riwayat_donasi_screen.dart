import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';

class RiwayatDonasiScreen extends StatelessWidget {
  const RiwayatDonasiScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 11.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 91.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total donasimu",
                      style: CustomTextStyles.titleSmallGray700,
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      height: 55.v,
                      width: 61.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 3.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.h,
                                vertical: 8.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  Text(
                                    "9",
                                    style: theme.textTheme.headlineLarge,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 35.v,
                            width: 61.h,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Terbaru",
                    style: CustomTextStyles.labelLargeGray600,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              _buildJanuariRow(context),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildHeadlineRow(
                  context,
                  headline: "Nominal donasi",
                  date: "Tanggal donasi",
                  detail: "Cek detail",
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildHeadlineRow(
                  context,
                  headline: "Nominal donasi",
                  date: "Tanggal donasi",
                  detail: "Cek detail",
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Desember 2023",
                    style: CustomTextStyles.labelLargeGray600,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildHeadlineRow(
                  context,
                  headline: "Rp. 100.000",
                  date: "30 Desember 2023",
                  detail: "Cek detail",
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildHeadlineRow(
                  context,
                  headline: "Nominal donasi",
                  date: "Tanggal donasi",
                  detail: "Cek detail",
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildHeadlineRow(
                  context,
                  headline: "Nominal donasi",
                  date: "Tanggal donasi",
                  detail: "Cek detail",
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "November 2023",
                  style: CustomTextStyles.labelLargeGray600,
                ),
              ),
              SizedBox(height: 3.v),
              _buildDateRow(context),
              SizedBox(height: 8.v),
              _buildHeadlineRow(
                context,
                headline: "Nominal donasi",
                date: "Tanggal donasi",
                detail: "Cek detail",
              ),
              SizedBox(height: 8.v),
              _buildHeadlineRow(
                context,
                headline: "Nominal donasi",
                date: "Tanggal donasi",
                detail: "Cek detail",
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJanuariRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rp. 100.000",
                style: theme.textTheme.titleSmall,
              ),
              Text(
                "01 Januari 2024",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
            child: Text(
              "Cek detail",
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 8.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rp. 100.000",
                style: theme.textTheme.titleSmall,
              ),
              Text(
                "30 November 2023",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
            child: Text(
              "Cek detail",
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 8.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHeadlineRow(
    BuildContext context, {
    required String headline,
    required String date,
    required String detail,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              Text(
                date,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.gray80001,
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
            child: Text(
              detail,
              style: CustomTextStyles.titleSmallPrimary.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 10.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }
}
