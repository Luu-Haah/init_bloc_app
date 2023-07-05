// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sliderbanner_item_model.dart';

/// This class defines the variables used in the [screen_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScreenOneModel extends Equatable {
  ScreenOneModel({this.sliderbannerItemList = const []});

  List<SliderbannerItemModel> sliderbannerItemList;

  ScreenOneModel copyWith({List<SliderbannerItemModel>? sliderbannerItemList}) {
    return ScreenOneModel(
      sliderbannerItemList: sliderbannerItemList ?? this.sliderbannerItemList,
    );
  }

  @override
  List<Object?> get props => [sliderbannerItemList];
}
