// ignore_for_file: must_be_immutable

part of 'currency_exchange_bloc.dart';

@immutable
abstract class CurrencyExchangeEvent extends Equatable {}

class CurrencyExchangeInitialEvent extends CurrencyExchangeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends CurrencyExchangeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends CurrencyExchangeEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
