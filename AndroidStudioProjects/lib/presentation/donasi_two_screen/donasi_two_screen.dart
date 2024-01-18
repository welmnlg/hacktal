import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_drop_down.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_elevated_button.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class DonasiTwoScreen extends StatelessWidget {
  DonasiTwoScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
                child: Column(children: [
                  Text("DONASI PANGAN",
                      style: CustomTextStyles.titleLargeGray800),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse830x30,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                radius: BorderRadius.circular(15.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 5.h, top: 7.v, bottom: 3.v),
                                child: Text("Anonim",
                                    style: CustomTextStyles
                                        .titleMediumBlack900Medium))
                          ]))),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("Saldo: Rp. 100.000",
                          style: CustomTextStyles.labelLargeGray800)),
                  SizedBox(height: 3.v),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 24.v),
                      decoration: AppDecoration.outlineBlack,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomFloatingTextField(
                            controller: nameController,
                            labelText: "Nama",
                            labelStyle: CustomTextStyles.titleSmallAmber500,
                            hintText: "Nama"),
                        SizedBox(height: 32.v),
                        CustomFloatingTextField(
                            controller: amountController,
                            labelText: "Nominal",
                            labelStyle: CustomTextStyles.labelLargeGray400,
                            hintText: "Nominal",
                            textInputAction: TextInputAction.done,
                            contentPadding:
                                EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 9.v)),
                        SizedBox(height: 33.v),
                        _buildTextField(context),
                        SizedBox(height: 33.v),
                        _buildTextField1(context),
                        SizedBox(height: 8.v)
                      ])),
                  SizedBox(height: 34.v),
                  CustomElevatedButton(
                      height: 35.v,
                      width: 170.h,
                      text: "Donasi",
                      buttonStyle: CustomButtonStyles.fillGray,
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
  Widget _buildTextField(BuildContext context) {
    return SizedBox(
        height: 47.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
                  decoration: AppDecoration.outlinePrimary
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 7.v),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("Pilih metode pembayaran",
                                      style:
                                          CustomTextStyles.labelLargeGray400)),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 3.v),
                                  child: CustomDropDown(
                                      width: 49.h,
                                      hintText: "Ganti",
                                      items: dropdownItemList,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 9.h, vertical: 1.v),
                                      borderDecoration:
                                          DropDownStyleHelper.fillPrimary,
                                      fillColor: theme.colorScheme.primary,
                                      onChanged: (value) {}))
                            ])),
                    SizedBox(height: 2.v),
                    Divider(
                        color: appTheme.gray600, indent: 3.h, endIndent: 3.h)
                  ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 17.v,
                  width: 139.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 16.v,
                            width: 139.h,
                            decoration:
                                BoxDecoration(color: appTheme.gray5001))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Metode Pembayaran",
                            style: CustomTextStyles.titleSmallAmber500))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTextField1(BuildContext context) {
    return SizedBox(
        height: 161.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.v),
                  decoration: AppDecoration.outlinePrimary
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 124.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("0/200",
                                style: CustomTextStyles.labelLargeGray600_1)),
                        SizedBox(height: 2.v),
                        Divider(
                            color: appTheme.gray600,
                            indent: 9.h,
                            endIndent: 9.h)
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 17.v,
                  width: 206.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 16.v,
                            width: 206.h,
                            decoration:
                                BoxDecoration(color: appTheme.gray5001))),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Keterangan (#Kata Warga Baik)",
                            style: CustomTextStyles.titleSmallAmber500))
                  ])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
