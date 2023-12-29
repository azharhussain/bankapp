// ignore_for_file: must_be_immutable

part of 'currency_settings_bloc.dart';

@immutable
abstract class CurrencySettingsEvent extends Equatable {}

class CurrencySettingsInitialEvent extends CurrencySettingsEvent {
  @override
  List<Object?> get props => [];
}

class ListItemEvent extends CurrencySettingsEvent {
  ListItemEvent({
    required this.index,
    this.radioGroup,
  });

  int index;

  String? radioGroup;

  @override
  List<Object?> get props => [
        index,
        radioGroup,
      ];
}
