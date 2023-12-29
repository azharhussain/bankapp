// ignore_for_file: must_be_immutable

part of 'currency_exchange_bloc.dart';

class CurrencyExchangeState extends Equatable {
  CurrencyExchangeState({
    this.priceController,
    this.priceTwoController,
    this.group2960Controller,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.currencyExchangeModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceTwoController;

  TextEditingController? group2960Controller;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  CurrencyExchangeModel? currencyExchangeModelObj;

  @override
  List<Object?> get props => [
        priceController,
        priceTwoController,
        group2960Controller,
        selectedDropDownValue,
        selectedDropDownValue1,
        currencyExchangeModelObj,
      ];
  CurrencyExchangeState copyWith({
    TextEditingController? priceController,
    TextEditingController? priceTwoController,
    TextEditingController? group2960Controller,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    CurrencyExchangeModel? currencyExchangeModelObj,
  }) {
    return CurrencyExchangeState(
      priceController: priceController ?? this.priceController,
      priceTwoController: priceTwoController ?? this.priceTwoController,
      group2960Controller: group2960Controller ?? this.group2960Controller,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      currencyExchangeModelObj:
          currencyExchangeModelObj ?? this.currencyExchangeModelObj,
    );
  }
}
