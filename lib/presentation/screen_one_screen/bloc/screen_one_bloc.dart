import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderbanner_item_model.dart';
import 'package:bloc_initial_app/presentation/screen_one_screen/models/screen_one_model.dart';
part 'screen_one_event.dart';
part 'screen_one_state.dart';

/// A bloc that manages the state of a ScreenOne according to the event that is dispatched to it.
class ScreenOneBloc extends Bloc<ScreenOneEvent, ScreenOneState> {
  ScreenOneBloc(ScreenOneState initialState) : super(initialState) {
    on<ScreenOneInitialEvent>(_onInitialize);
  }

  List<SliderbannerItemModel> fillSliderbannerItemList() {
    return List.generate(1, (index) => SliderbannerItemModel());
  }

  _onInitialize(
    ScreenOneInitialEvent event,
    Emitter<ScreenOneState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        screenOneModelObj: state.screenOneModelObj
            ?.copyWith(sliderbannerItemList: fillSliderbannerItemList())));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.screenTwoScreen,
      );
    });
  }
}
