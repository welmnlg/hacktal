import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_drop_down.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_elevated_button.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_text_form_field.dart';

class PageDataDiriOneScreen extends StatelessWidget {
  PageDataDiriOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController enterFullNameController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController enterAgeController = TextEditingController();

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.amber500.withOpacity(0.4),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.amber500.withOpacity(0.4),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgPageDataDiri,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 16.h,
              top: 62.v,
              right: 16.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "Isi Biodatamu Sebentar Yaa...",
                    style: CustomTextStyles.titleLargeWhiteA700,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "Tenang saja... data pribadi kamu akan aman",
                    style: CustomTextStyles.titleSmallRed100,
                  ),
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "Nama Lengkap",
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: CustomTextFormField(
                    controller: enterFullNameController,
                    hintText: "Masukkan Nama Lengkap",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 13.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillLime,
                    fillColor: appTheme.lime50,
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    " Gender",
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 19.v,
                        width: 24.h,
                      ),
                    ),
                    hintText: "Pilih Gender",
                    items: dropdownItemList,
                    contentPadding: EdgeInsets.only(
                      left: 22.h,
                      top: 13.v,
                      bottom: 13.v,
                    ),
                    borderDecoration: DropDownStyleHelper.fillLime,
                    fillColor: appTheme.lime50,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "Umur",
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomTextFormField(
                    controller: enterAgeController,
                    hintText: "Masukkan Umur",
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 13.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillLime,
                    fillColor: appTheme.lime50,
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Provinsi Domisili",
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 19.v,
                        width: 24.h,
                      ),
                    ),
                    hintText: "Pilih Domisili",
                    items: dropdownItemList1,
                    contentPadding: EdgeInsets.only(
                      left: 25.h,
                      top: 13.v,
                      bottom: 13.v,
                    ),
                    borderDecoration: DropDownStyleHelper.fillLime,
                    fillColor: appTheme.lime50,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 46.v),
                CustomElevatedButton(
                  text: "Masuk",
                  margin: EdgeInsets.only(left: 1.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientCyanToPrimaryDecoration,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
