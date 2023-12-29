import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listellipse311_item_model.dart';
import '../models/listone_item_model.dart';
import 'package:bankapp/presentation/send_money_screen/models/send_money_model.dart';
part 'send_money_event.dart';
part 'send_money_state.dart';

class SendMoneyBloc extends Bloc<SendMoneyEvent, SendMoneyState> {
  SendMoneyBloc(SendMoneyState initialState) : super(initialState) {
    on<SendMoneyInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    SendMoneyInitialEvent event,
    Emitter<SendMoneyState> emit,
  ) async {
    emit(state.copyWith(
        sendMoneyModelObj: state.sendMoneyModelObj?.copyWith(
            listellipse311ItemList: fillListellipse311ItemList(),
            dropdownItemList: fillDropdownItemList(),
            listoneItemList: fillListoneItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<SendMoneyState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<Listellipse311ItemModel> fillListellipse311ItemList() {
    return List.generate(2, (index) => Listellipse311ItemModel());
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<ListoneItemModel> fillListoneItemList() {
    return List.generate(3, (index) => ListoneItemModel());
  }
}
