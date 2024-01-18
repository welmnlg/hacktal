import '../home_page/widgets/menusection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:imanuel_mt_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL28,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 4.v,
                        width: 32.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray60001,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildMenuSection(context),
                      Spacer(
                        flex: 37,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Berita Harian Pangan",
                          style: CustomTextStyles.titleMediumGray800,
                        ),
                      ),
                      Spacer(
                        flex: 62,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuSection(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 57.v,
          crossAxisCount: 5,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 11,
        itemBuilder: (context, index) {
          return MenusectionItemWidget();
        },
      ),
    );
  }
}
