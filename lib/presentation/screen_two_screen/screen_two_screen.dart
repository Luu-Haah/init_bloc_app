import 'bloc/screen_two_bloc.dart';
import 'models/screen_two_model.dart';
import 'package:bloc_initial_app/core/app_export.dart';
import 'package:bloc_initial_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ScreenTwoScreen extends StatelessWidget {
  const ScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenTwoBloc>(
      create: (context) => ScreenTwoBloc(ScreenTwoState(
        screenTwoModelObj: ScreenTwoModel(),
      ))
        ..add(ScreenTwoInitialEvent()),
      child: ScreenTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreenTwoBloc, ScreenTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 24,
                top: 84,
                right: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup5649,
                    height: getVerticalSize(
                      40,
                    ),
                    width: getHorizontalSize(
                      43,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup,
                    height: getVerticalSize(
                      260,
                    ),
                    width: getHorizontalSize(
                      255,
                    ),
                    margin: getMargin(
                      top: 29,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 30,
                    ),
                    child: Text(
                      "lbl_c_ng_d_n_s".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoExtraBold22.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Text(
                      "msg_cho_cu_c_s_ng_thu_n".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoSemiBold12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      50,
                    ),
                    text: "lbl_b_t_u".tr,
                    margin: getMargin(
                      left: 27,
                      top: 34,
                      right: 27,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Text(
                      "lbl_ho_c".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoBold16.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      50,
                    ),
                    text: "msg_t_o_t_i_kho_n_m_i".tr,
                    margin: getMargin(
                      left: 27,
                      top: 2,
                      right: 27,
                      bottom: 5,
                    ),
                    variant: ButtonVariant.FillBluegray4006c,
                    fontStyle: ButtonFontStyle.NunitoBold16Bluegray800,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
