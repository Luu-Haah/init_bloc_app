import '../models/sliderbanner_item_model.dart';
import 'package:bloc_initial_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderbannerItemWidget extends StatelessWidget {
  SliderbannerItemWidget(
    this.sliderbannerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderbannerItemModel sliderbannerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgBanner,
      height: getVerticalSize(
        240,
      ),
      width: getHorizontalSize(
        375,
      ),
    );
  }
}
