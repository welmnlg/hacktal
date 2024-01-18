import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_elevated_button.dart';

class DonasiNineScreen extends StatelessWidget {
  const DonasiNineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v),
                child: Column(children: [
                  Text("DETAIL DONASI",
                      style: CustomTextStyles.titleLargeGray800),
                  SizedBox(height: 15.v),
                  _buildTwentyOne(context),
                  SizedBox(height: 45.v),
                  CustomElevatedButton(
                      height: 35.v,
                      width: 170.h,
                      text: "Kembali",
                      buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700),
                  SizedBox(height: 5.v)
                ]))));
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
  Widget _buildTwentyOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 25.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup21), fit: BoxFit.cover)),
        child: Column(children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup, height: 40.v, width: 183.h),
          SizedBox(height: 34.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tanggal Donasi:",
                                  style: theme.textTheme.labelLarge),
                              SizedBox(height: 8.v),
                              Text("Nomor Referensi:",
                                  style: theme.textTheme.labelLarge)
                            ])),
                    Column(children: [
                      Text("01 Januari 2024",
                          style: CustomTextStyles.labelLargeGray900),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("54463873456",
                              style: CustomTextStyles.labelLargeGray900))
                    ])
                  ])),
          SizedBox(height: 29.v),
          Divider(color: appTheme.gray80002),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildPenerima(context,
                  penerimaText: "Pengirim:", badanPanganText: "Anonim")),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildPenerima(context,
                  penerimaText: "Penerima:",
                  badanPanganText: "Badan Pangan Nasional")),
          SizedBox(height: 25.v),
          Divider(color: appTheme.gray800),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildPenerima(context,
                  penerimaText: "Total transfer:",
                  badanPanganText: "Rp. 50.000")),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildPenerima(context,
                  penerimaText: "Biaya Transfer:",
                  badanPanganText: "Rp. 1.000")),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildPenerima(context,
                  penerimaText: "Total:", badanPanganText: "Rp. 51.000")),
          SizedBox(height: 5.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildPenerima(context,
                  penerimaText: "Status:", badanPanganText: "BERHASIL")),
          SizedBox(height: 19.v)
        ]));
  }

  /// Common widget
  Widget _buildPenerima(
    BuildContext context, {
    required String penerimaText,
    required String badanPanganText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(penerimaText,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: appTheme.gray80002))),
      Text(badanPanganText,
          style: CustomTextStyles.labelLargeGray900
              .copyWith(color: appTheme.gray900))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
