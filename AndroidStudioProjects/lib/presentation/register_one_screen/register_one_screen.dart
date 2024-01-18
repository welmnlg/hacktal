import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_elevated_button.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_outlined_button.dart';
import 'package:imanuel_mt_s_application2/widgets/custom_text_form_field.dart';

class RegisterOneScreen extends StatelessWidget {
  RegisterOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController enterNikController = TextEditingController();

  TextEditingController enterNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController enterPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5002,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ayo Daftar",
                      style: CustomTextStyles.titleLargeBluegray80001,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Selamat datang, silakan mendaftar akun",
                      style: CustomTextStyles.bodySmallPrimary,
                    ),
                    SizedBox(height: 22.v),
                    _buildEnterNik(context),
                    SizedBox(height: 21.v),
                    _buildEnterName(context),
                    SizedBox(height: 21.v),
                    _buildEmail(context),
                    SizedBox(height: 22.v),
                    _buildEnterPassword(context),
                    SizedBox(height: 20.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 9.h),
                        child: Text(
                          "Lupa password",
                          style: CustomTextStyles.bodySmallSecondaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildDaftar(context),
                    SizedBox(height: 34.v),
                    _buildLineThirty(context),
                    SizedBox(height: 24.v),
                    _buildFiftySeven(context),
                    SizedBox(height: 21.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Sudah punya akun? ",
                            style: CustomTextStyles.bodySmallff3a4357,
                          ),
                          TextSpan(
                            text: "Masuk disini",
                            style: CustomTextStyles.labelLargeff1fa4a2,
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
  Widget _buildEnterNik(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: CustomTextFormField(
        controller: enterNikController,
        hintText: "Masukkan NIK",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(9.h, 8.v, 6.h, 6.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSubtitles,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 38.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: CustomTextFormField(
        controller: enterNameController,
        hintText: "Masukkan nama",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(7.h, 9.v, 10.h, 9.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgBxsuser,
            height: 20.v,
            width: 22.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 38.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Masukkan email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(12.h, 10.v, 5.h, 8.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgBxsenvelope,
            height: 20.v,
            width: 22.h,
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
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: CustomTextFormField(
        controller: enterPasswordController,
        hintText: "Masukkan kata sandi",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildDaftar(BuildContext context) {
    return CustomElevatedButton(
      text: "Daftar",
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientCyanToAmberDecoration,
    );
  }

  /// Section Widget
  Widget _buildLineThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
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
  Widget _buildFiftySeven(BuildContext context) {
    return SizedBox(
      height: 45.v,
      width: 333.h,
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
