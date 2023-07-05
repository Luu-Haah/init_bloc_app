// ignore_for_file: must_be_immutable

part of 'screen_one_bloc.dart';

/// Represents the state of ScreenOne in the application.
class ScreenOneState extends Equatable {
  ScreenOneState({
    this.sliderIndex = 0,
    this.screenOneModelObj,
  });

  ScreenOneModel? screenOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        screenOneModelObj,
      ];
  ScreenOneState copyWith({
    int? sliderIndex,
    ScreenOneModel? screenOneModelObj,
  }) {
    return ScreenOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      screenOneModelObj: screenOneModelObj ?? this.screenOneModelObj,
    );
  }
}
