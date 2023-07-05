import '../screen_one_screen/widgets/sliderbanner_item_widget.dart';
import 'bloc/screen_one_bloc.dart';
import 'models/screen_one_model.dart';
import 'models/sliderbanner_item_model.dart';
import 'package:bloc_initial_app/core/app_export.dart';
import 'package:bloc_initial_app/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenOneScreen extends StatelessWidget {
  const ScreenOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenOneBloc>(
        create: (context) =>
            ScreenOneBloc(ScreenOneState(screenOneModelObj: ScreenOneModel()))
              ..add(ScreenOneInitialEvent()),
        child: ScreenOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 84),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup5649,
                          height: getVerticalSize(40),
                          width: getHorizontalSize(43),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 24)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: BlocBuilder<ScreenOneBloc, ScreenOneState>(
                              builder: (context, state) {
                            return CarouselSlider.builder(
                                options: CarouselOptions(
                                    height: getVerticalSize(240),
                                    initialPage: 0,
                                    autoPlay: true,
                                    viewportFraction: 1.0,
                                    enableInfiniteScroll: false,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      state.sliderIndex = index;
                                    }),
                                itemCount: state.screenOneModelObj
                                        ?.sliderbannerItemList.length ??
                                    0,
                                itemBuilder: (context, index, realIndex) {
                                  SliderbannerItemModel model = state
                                          .screenOneModelObj
                                          ?.sliderbannerItemList[index] ??
                                      SliderbannerItemModel();
                                  return SliderbannerItemWidget(model);
                                });
                          })),
                      BlocBuilder<ScreenOneBloc, ScreenOneState>(
                          builder: (context, state) {
                        return Container(
                            height: getVerticalSize(12),
                            margin: getMargin(top: 9),
                            child: AnimatedSmoothIndicator(
                                activeIndex: state.sliderIndex,
                                count: state.screenOneModelObj
                                        ?.sliderbannerItemList.length ??
                                    0,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                    spacing: 8,
                                    activeDotColor: ColorConstant.red300,
                                    dotColor: ColorConstant.blueGray100,
                                    dotHeight: getVerticalSize(12),
                                    dotWidth: getHorizontalSize(12))));
                      }),
                      Padding(
                          padding: getPadding(top: 16, bottom: 5),
                          child: Text("msg_th_ng_tin_vi_c_l_m".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoExtraBold22.copyWith(
                                  letterSpacing: getHorizontalSize(0.5))))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(40),
                width: getHorizontalSize(166),
                text: "lbl_ti_p_t_c".tr,
                margin: getMargin(left: 104, right: 104, bottom: 60),
                shape: ButtonShape.CircleBorder20,
                padding: ButtonPadding.PaddingAll9)));
  }
}
