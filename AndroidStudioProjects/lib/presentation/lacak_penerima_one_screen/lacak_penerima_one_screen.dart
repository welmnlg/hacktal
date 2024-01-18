import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:imanuel_mt_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class LacakPenerimaOneScreen extends StatelessWidget {
  LacakPenerimaOneScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Cari nama disini...")),
                  SizedBox(height: 41.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle212,
                      height: 190.v,
                      width: 143.h),
                  SizedBox(height: 13.v),
                  Text("Nama Penerima",
                      style: CustomTextStyles.titleLargeGray800),
                  SizedBox(height: 13.v),
                  _buildSearchColumn(context),
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
  Widget _buildSearchColumn(BuildContext context) {
    return SizedBox(
        height: 249.v,
        width: 336.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: AppDecoration.outlineBlack9001,
                  child: Container(
                      height: 245.v,
                      width: 168.h,
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          border: Border.all(
                              color: appTheme.black900, width: 1.h))))),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 151.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Text(
                      "Domisili\nJadwal pembagian bantuan\nLokasi\nJenis bantuan\nJumlah anggota keluarga\nNominal bantuan\nKeterangan lain\nKeterangan lain",
                      maxLines: 12,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeBlack900
                          .copyWith(height: 1.67)))),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  width: 150.h,
                  margin: EdgeInsets.only(right: 10.h),
                  child: Text(
                      "Medan, Sumatera Utara\nSabtu, 22 Januari 2024\nKantor camat Medan Timur\nNon-Tunai\n5 orang\nRp. 1.000.000\nKeterangan lain\nKeterangan lain",
                      maxLines: 12,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeBlack900
                          .copyWith(height: 1.67))))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
