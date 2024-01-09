import 'package:flutter/material.dart';
import 'package:testapp/core/app_export.dart';
import 'package:testapp/widgets/custom_outlined_button.dart';
import 'package:testapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FrameSevenScreen extends StatelessWidget {
  FrameSevenScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(0.8),
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 668.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    height: 121.v,
                                                    width: 174.h,
                                                    margin: EdgeInsets.only(
                                                        left: 21.h, top: 73.v),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onPrimary
                                                            .withOpacity(1)))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgRectangle1,
                                                height: 495.v,
                                                width: 375.h,
                                                alignment: Alignment.topCenter),
                                            _buildLoginForm(context)
                                          ])),
                                  SizedBox(height: 25.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 117.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFlatColorIconsGoogle,
                                            height: 28.adaptSize,
                                            width: 28.adaptSize,
                                            radius: BorderRadius.circular(10.h),
                                            margin: EdgeInsets.only(top: 2.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFacebook,
                                            height: 27.v,
                                            width: 28.h,
                                            margin: EdgeInsets.only(
                                                left: 58.h, bottom: 2.v))
                                      ])),
                                  SizedBox(height: 31.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 98.h),
                                      child: Row(children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text("Create new account?",
                                                style: TextStyle(
                                                    color: theme.colorScheme
                                                        .onPrimaryContainer
                                                        .withOpacity(0.6),
                                                    fontSize: 11.fSize,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w400))),
                                        Text("Signup",
                                            style: TextStyle(
                                                color: appTheme.teal900,
                                                fontSize: 11.fSize,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400))
                                      ])),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Text("LOGIN",
                          style: TextStyle(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              fontSize: 20.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700))),
                  SizedBox(height: 7.v),
                  Container(
                      width: 319.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 43.v),
                      decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Opacity(
                            opacity: 0.3,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: CustomTextFormField(
                                    controller: emailController,
                                    hintText: "Email",
                                    textInputType: TextInputType.emailAddress,
                                    contentPadding: EdgeInsets.all(6.h)))),
                        SizedBox(height: 28.v),
                        Opacity(
                            opacity: 0.3,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "password",
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    obscureText: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 2.h, vertical: 6.v)))),
                        SizedBox(height: 9.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("Forgot password?",
                                style: TextStyle(
                                    color: appTheme.black900.withOpacity(0.6),
                                    fontSize: 10.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400))),
                        SizedBox(height: 31.v),
                        CustomOutlinedButton(
                            height: 30.v,
                            text: "Login",
                            margin: EdgeInsets.only(left: 15.h, right: 24.h),
                            onPressed: () {
                              onTapLogin(context);
                            },
                            alignment: Alignment.centerLeft),
                        SizedBox(height: 44.v)
                      ]))
                ])));
  }

  /// Navigates to the catalogTwoScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.catalogTwoScreen);
  }
}
