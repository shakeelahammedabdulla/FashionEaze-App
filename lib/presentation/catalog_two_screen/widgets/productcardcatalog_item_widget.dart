import 'package:flutter/material.dart';
import 'package:testapp/core/app_export.dart';
import 'package:testapp/widgets/custom_icon_button.dart';

class ProductcardcatalogItemWidget extends StatelessWidget {
  const ProductcardcatalogItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 210.v,
          width: 162.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 184.v,
                width: 162.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                alignment: Alignment.topCenter,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.v),
                child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Mango",
                  style: TextStyle(
                    color: appTheme.gray500,
                    fontSize: 11.fSize,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          "T-Shirt SPANISH",
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 16.fSize,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          "\$9",
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer,
            fontSize: 14.fSize,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
