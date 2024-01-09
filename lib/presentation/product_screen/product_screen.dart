import 'package:flutter/material.dart';
import 'package:testapp/core/app_export.dart';
import 'package:testapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:testapp/widgets/app_bar/appbar_title.dart';
import 'package:testapp/widgets/app_bar/custom_app_bar.dart';
import 'package:testapp/widgets/custom_icon_button.dart';
import 'package:testapp/widgets/custom_text_form_field.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  TextEditingController sizevalueController = TextEditingController();
  TextEditingController colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildThirteenStack(context),
              _buildFortySixHorizontalScroll(context),
              SizedBox(height: 12.v),
              _buildTwentySixRow(context),
              SizedBox(height: 23.v),
              _buildFortyFiveRow(context),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Short black dress",
                  style: TextStyle(
                    color: appTheme.gray500,
                    fontSize: 11.fSize,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(left: 16.h, right: 43.h),
                child: Text(
                  "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer,
                    fontSize: 14.fSize,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              Opacity(
                opacity: 0.25,
                child: Divider(
                  color: appTheme.gray500.withOpacity(0.44),
                  indent: 1.h,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}


  Widget _buildThirteenStack(BuildContext context) {
    return SizedBox(
        height: 44.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 44.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black900.withOpacity(0.08),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 4))
                      ]))),
          CustomAppBar(
              height: 32.v,
              leadingWidth: 32.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgIconOnprimarycontainer,
                  margin: EdgeInsets.only(left: 8.h, top: 8.v),
                  onTap: () {
                    onTapIcon(context);
                  }),
              title: AppbarTitle(
                  text: "Product View", margin: EdgeInsets.only(left: 90.h)))
        ]));
  }

  /// Section Widget
  Widget _buildFortySixHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 413.v,
              width: 275.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage413x275,
                    height: 413.v,
                    width: 275.h,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(width: 125.h, child: Divider()))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgImage413x276,
              height: 413.v,
              width: 276.h,
              margin: EdgeInsets.only(left: 4.h))
        ])));
  }

  /// Section Widget
  Widget _buildTwentySixRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomTextFormField(
                  width: 138.h,
                  // controller: sizevalueController,
                  hintText: "Size"),
              Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: CustomTextFormField(
                      width: 137.h,
                      // controller: colorController,
                      hintText: "Black",
                      textInputAction: TextInputAction.done)),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      child: CustomImageView(imagePath: ImageConstant.imgIcon)))
            ])));
  }

  /// Section Widget
  Widget _buildFortyFiveRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 33.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("H&M",
                  style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontSize: 24.fSize,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w600))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgLucideindianrupee,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(top: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text("5000",
                  style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 21.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400)))
        ]));
  }

  onTapIcon(BuildContext context) {
    Navigator.pop(context);
  }
