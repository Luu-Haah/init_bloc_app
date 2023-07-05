// ignore_for_file: must_be_immutable

part of 'screen_two_bloc.dart';

/// Represents the state of ScreenTwo in the application.
class ScreenTwoState extends Equatable {
  ScreenTwoState({this.screenTwoModelObj});

  ScreenTwoModel? screenTwoModelObj;

  @override
  List<Object?> get props => [
        screenTwoModelObj,
      ];
  ScreenTwoState copyWith({ScreenTwoModel? screenTwoModelObj}) {
    return ScreenTwoState(
      screenTwoModelObj: screenTwoModelObj ?? this.screenTwoModelObj,
    );
  }
}
