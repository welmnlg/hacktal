import '../donasi_page/widgets/donationgrid_item_widget.dart';
import '../donasi_page/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_elevated_button.dart';

class DonasiPage extends StatelessWidget {
  const DonasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildDonationGrid(context),
                          SizedBox(height: 5.v),
                          _buildDonationRow(context),
                          SizedBox(height: 8.v),
                          CustomElevatedButton(
                              height: 26.v,
                              width: 164.h,
                              text: "Donasi Sekarang",
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle:
                                  CustomTextStyles.labelLargeWhiteA700Bold),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: _buildDonationDetailsRow(context,
                                  insertChartImage: ImageConstant.imgHowToVote,
                                  rincianPengelolaanText: "Riwayat donasi")),
                          SizedBox(height: 16.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: _buildDonationDetailsRow(context,
                                  insertChartImage:
                                      ImageConstant.imgInsertChart,
                                  rincianPengelolaanText:
                                      "Rincian pengelolaan dana")),
                          SizedBox(height: 16.v),
                          _buildDistributionDetailsRow(context),
                          SizedBox(height: 23.v),
                          _buildGoodCitizenRow(context),
                          SizedBox(height: 4.v),
                          _buildUserProfileList(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(24.h, 6.v, 320.h, 11.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildDonationGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 76.v,
                crossAxisCount: 3,
                mainAxisSpacing: 1.h,
                crossAxisSpacing: 1.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) {
              return DonationgridItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildDonationRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 3.v),
        decoration: AppDecoration.fillAmber,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Donasi dari warga baik",
                style: CustomTextStyles.labelLargeBlack900Medium_1),
            Text("Rp. 999.999.999", style: CustomTextStyles.titleSmallBlack900),
            Text("01 Januari 2023 - 31 Januari 2023",
                style: CustomTextStyles.labelSmallBlack900)
          ]),
          Padding(
              padding: EdgeInsets.only(top: 30.v),
              child: Text("99.999 Donasi",
                  style: CustomTextStyles.labelMediumBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildDistributionDetailsRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 24.v,
                  width: 26.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                  child: Stack(alignment: Alignment.topRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 11.v,
                        width: 21.h,
                        alignment: Alignment.bottomLeft),
                    CustomImageView(
                        imagePath: ImageConstant.imgSpa,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        alignment: Alignment.topRight)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 5.v, bottom: 1.v),
                  child: Text("Rincian penyaluran dana",
                      style: CustomTextStyles.titleSmallGray600)),
              Spacer(),
              Container(
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(top: 5.v, right: 4.h, bottom: 5.v),
                  padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.v),
                  decoration: AppDecoration.fillPrimary
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightWhiteA700,
                      height: 12.v,
                      width: 7.h,
                      alignment: Alignment.center))
            ]));
  }

  /// Section Widget
  Widget _buildGoodCitizenRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h, right: 27.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#Kata Warga Baik",
                      style: CustomTextStyles.titleSmallGray800),
                  Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: Text("Lihat semua >",
                          style: theme.textTheme.labelMedium))
                ])));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 14.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofilelistItemWidget();
            }));
  }

  /// Common widget
  Widget _buildDonationDetailsRow(
    BuildContext context, {
    required String insertChartImage,
    required String rincianPengelolaanText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: insertChartImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 1.v),
                  child: Text(rincianPengelolaanText,
                      style: CustomTextStyles.titleSmallGray600
                          .copyWith(color: appTheme.gray600))),
              Spacer(),
              Container(
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(top: 5.v, right: 4.h, bottom: 5.v),
                  padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.v),
                  decoration: AppDecoration.fillPrimary
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightWhiteA700,
                      height: 12.v,
                      width: 7.h,
                      alignment: Alignment.center))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
