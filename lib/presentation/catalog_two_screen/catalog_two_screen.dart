import 'package:testapp/presentation/my_bag_screen/my_bag_screen.dart';
import 'package:testapp/presentation/product_screen/product_screen.dart';

import '../catalog_two_screen/widgets/productcardcatalog_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:testapp/core/app_export.dart';
import 'package:testapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:testapp/widgets/app_bar/appbar_title.dart';
import 'package:testapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:testapp/widgets/app_bar/custom_app_bar.dart';


class CatalogTwoScreen extends StatelessWidget {
  const CatalogTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 26.v,
            right: 16.h,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 270.v,
              crossAxisCount: 2,
              mainAxisSpacing: 18.h,
              crossAxisSpacing: 18.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductScreen(), 
                    ),
                  );
                },
                child: ProductcardcatalogItemWidget(),
              );
            },
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 42.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgTablerLogout2,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 20.v,
          bottom: 15.v,
        ),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/catalog_three');
        },
      ),
      title: AppbarTitle(
        text: "Products",
        margin: EdgeInsets.only(left: 92.h),
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyBagScreen()),
            );
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(22, 18, 22, 13),
            child: AppbarTrailingImage(
              imagePath: ImageConstant.imgBaselineSearch24px,
            ),
          ),
        ),
      ],
    );
  }
}
