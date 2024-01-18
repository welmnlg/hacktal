import 'dart:ui';
import 'package:imanuel_mt_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientCyanToAmberDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(7.h),
        gradient: LinearGradient(
          begin: Alignment(-0.13, 0),
          end: Alignment(1.02, 0),
          colors: [
            appTheme.cyan300,
            appTheme.amber500,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(7.h),
        gradient: LinearGradient(
          begin: Alignment(-0.13, 0),
          end: Alignment(1.02, 0),
          colors: [
            appTheme.cyan300,
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
