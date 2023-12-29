import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/currency_exchange_screen/models/currency_exchange_model.dart';
part 'currency_exchange_event.dart';
part 'currency_exchange_state.dart';

class CurrencyExchangeBloc
    extends Bloc<CurrencyExchangeEvent, CurrencyExchangeState> {
  CurrencyExchangeBloc(CurrencyExchangeState initialState)
      : super(initialState) {
    on<CurrencyExchangeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<CurrencyExchangeState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<CurrencyExchangeState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    CurrencyExchangeInitialEvent event,
    Emitter<CurrencyExchangeState> emit,
  ) async {
    emit(state.copyWith(
        priceController: TextEditingController(),
        priceTwoController: TextEditingController(),
        group2960Controller: TextEditingController()));
    emit(state.copyWith(
        currencyExchangeModelObj: state.currencyExchangeModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }
}
