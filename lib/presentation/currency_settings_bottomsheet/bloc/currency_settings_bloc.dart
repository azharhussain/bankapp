import '../models/list_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list_item_model.dart';
import 'package:bankapp/presentation/currency_settings_bottomsheet/models/currency_settings_model.dart';
part 'currency_settings_event.dart';
part 'currency_settings_state.dart';

class CurrencySettingsBloc
    extends Bloc<CurrencySettingsEvent, CurrencySettingsState> {
  CurrencySettingsBloc(CurrencySettingsState initialState)
      : super(initialState) {
    on<CurrencySettingsInitialEvent>(_onInitialize);
    on<ListItemEvent>(_listItem);
  }

  _onInitialize(
    CurrencySettingsInitialEvent event,
    Emitter<CurrencySettingsState> emit,
  ) async {
    emit(state.copyWith(
        currencySettingsModelObj: state.currencySettingsModelObj
            ?.copyWith(listItemList: fillListItemList())));
  }

  _listItem(
    ListItemEvent event,
    Emitter<CurrencySettingsState> emit,
  ) {
    List<ListItemModel> newList =
        List<ListItemModel>.from(state.currencySettingsModelObj!.listItemList);
    newList[event.index] =
        newList[event.index].copyWith(radioGroup: event.radioGroup);
    emit(state.copyWith(
        currencySettingsModelObj:
            state.currencySettingsModelObj?.copyWith(listItemList: newList)));
  }

  List<ListItemModel> fillListItemList() {
    return List.generate(3, (index) => ListItemModel());
  }
}
