import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_elevated_button.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_outlined_button.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_text_form_field.dart';

class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController enterNIKController = TextEditingController();

  TextEditingController enterPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5002,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 65.v,
                  right: 3.h,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle176,
                      height: 82.v,
                      width: 214.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 62.h),
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "Selamat Datang",
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                    SizedBox(height: 33.v),
                    _buildEnterNIK(context),
                    SizedBox(height: 22.v),
                    _buildEnterPassword(context),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Lupa password",
                        style: CustomTextStyles.bodySmallSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildDaftar(context),
                    SizedBox(height: 32.v),
                    _buildLineThirty(context),
                    SizedBox(height: 18.v),
                    _buildFiftyNine(context),
                    SizedBox(height: 13.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Belum Punya Akun? ",
                            style: CustomTextStyles.bodySmallInterff3a4357,
                          ),
                          TextSpan(
                            text: "Daftar disini",
                            style: CustomTextStyles.labelLargeInterff1fa4a2,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterNIK(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      child: CustomTextFormField(
        controller: enterNIKController,
        hintText: "Masukkan NIK",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(8.h, 8.v, 5.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSubtitles,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 38.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      child: CustomTextFormField(
        controller: enterPasswordController,
        hintText: "Masukkan kata sandi",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(8.h, 8.v, 5.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSubtitles,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 38.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDaftar(BuildContext context) {
    return CustomElevatedButton(
      text: "Daftar",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientCyanToAmberDecoration,
    );
  }

  /// Section Widget
  Widget _buildLineThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 6.v,
            ),
            child: SizedBox(
              width: 77.h,
              child: Divider(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Text(
              "atau lanjut dengan metode",
              style: CustomTextStyles.bodySmallOpenSansOnError,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 6.v,
            ),
            child: SizedBox(
              width: 88.h,
              child: Divider(
                indent: 9.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return CustomOutlinedButton(
      width: 170.h,
      text: "Facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return CustomOutlinedButton(
      width: 170.h,
      text: "Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 11.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return SizedBox(
      height: 46.v,
      width: 326.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildFacebook(context),
          _buildGoogle(context),
        ],
      ),
    );
  }
}
