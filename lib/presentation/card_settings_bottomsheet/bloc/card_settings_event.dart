// ignore_for_file: must_be_immutable

part of 'card_settings_bloc.dart';

@immutable
abstract class CardSettingsEvent extends Equatable {}

class CardSettingsInitialEvent extends CardSettingsEvent {
  @override
  List<Object?> get props => [];
}

///event for change radio button
class ChangeRadioButtonEvent extends CardSettingsEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change radio button
class ChangeRadioButton1Event extends CardSettingsEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change radio button
class ChangeRadioButton2Event extends CardSettingsEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
