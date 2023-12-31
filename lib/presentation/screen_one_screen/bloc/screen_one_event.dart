// ignore_for_file: must_be_immutable

part of 'screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScreenOneEvent extends Equatable {}

/// Event that is dispatched when the ScreenOne widget is first created.
class ScreenOneInitialEvent extends ScreenOneEvent {
  @override
  List<Object?> get props => [];
}
