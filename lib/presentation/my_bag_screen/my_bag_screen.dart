import 'package:flutter/material.dart';
import 'package:testapp/core/app_export.dart';
import 'package:testapp/widgets/app_bar/appbar_title.dart';
import 'package:testapp/widgets/app_bar/custom_app_bar.dart';
import 'package:testapp/widgets/custom_elevated_button.dart';
import 'package:testapp/widgets/custom_text_form_field.dart';

class MyBagScreen extends StatelessWidget {
  MyBagScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController descriptionValueController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
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
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 43.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSix(context),
                    SizedBox(height: 63.v),
                    _buildName(context),
                    SizedBox(height: 24.v),
                    _buildPrice(context),
                    SizedBox(height: 28.v),
                    _buildDescriptionValue(context),
                    SizedBox(height: 53.v),
                    _buildSave(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Add Product",
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Container(
      width: 338.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 135.h,
        vertical: 102.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 52.v,
            width: 53.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 30.h,
      ),
      child: CustomTextFormField(
        controller: nameController,
        hintText: "Product Name",
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 30.h,
      ),
      child: CustomTextFormField(
        controller: priceController,
        hintText: "Price",
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 13.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgLucideindianrupee,
            height: 17.v,
            width: 20.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 17.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 30.h,
      ),
      child: CustomTextFormField(
        controller: descriptionValueController,
        hintText: "Description",
        textInputAction: TextInputAction.done,
      ),
    );
  }



Widget _buildSave(BuildContext context) {
  return CustomElevatedButton(
    height: 48.v,
    width: 221.h,
    text: "Save",
    textColor: Colors.white,
    buttonStyle: CustomButtonStyles.outlineRedF,
    color: ColorScheme.dark(), 
    alignment: Alignment.center,
  );
}
}

