import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bloc_initial_app/presentation/screen_two_screen/models/screen_two_model.dart';
part 'screen_two_event.dart';
part 'screen_two_state.dart';

/// A bloc that manages the state of a ScreenTwo according to the event that is dispatched to it.
class ScreenTwoBloc extends Bloc<ScreenTwoEvent, ScreenTwoState> {
  ScreenTwoBloc(ScreenTwoState initialState) : super(initialState) {
    on<ScreenTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenTwoInitialEvent event,
    Emitter<ScreenTwoState> emit,
  ) async {}
}
