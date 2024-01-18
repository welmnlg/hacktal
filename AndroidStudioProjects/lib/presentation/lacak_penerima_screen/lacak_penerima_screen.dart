import '../lacak_penerima_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_drop_down.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LacakPenerimaScreen extends StatelessWidget {
  LacakPenerimaScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 12.v),
                    child: Column(children: [
                      Container(
                          width: 282.h,
                          margin: EdgeInsets.symmetric(horizontal: 39.h),
                          child: Text("DAFTAR PENERIMA BANTUAN\nPANGAN",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleLargeGray800)),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: CustomSearchView(
                              controller: searchController,
                              hintText: "Cari nama disini...")),
                      SizedBox(height: 22.v),
                      _buildElevationOne(context),
                      SizedBox(height: 9.v),
                      _buildUserProfile(context)
                    ])))));
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
  Widget _buildElevationOne(BuildContext context) {
    return SizedBox(
        height: 34.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 33.v,
                  width: double.maxFinite,
                  decoration:
                      BoxDecoration(color: appTheme.whiteA700, boxShadow: [
                    BoxShadow(
                        color: appTheme.black900.withOpacity(0.3),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(0, 1))
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: CustomDropDown(
                  width: 150.h,
                  hintText: "Tanggal",
                  hintStyle: CustomTextStyles.labelLargeMedium,
                  alignment: Alignment.topLeft,
                  items: dropdownItemList,
                  onChanged: (value) {})),
          Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: CustomDropDown(
                  width: 150.h,
                  hintText: "Lokasi Pembagian",
                  hintStyle: CustomTextStyles.labelLargeMedium,
                  alignment: Alignment.topRight,
                  items: dropdownItemList1,
                  onChanged: (value) {}))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 5.v);
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return UserprofileItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
