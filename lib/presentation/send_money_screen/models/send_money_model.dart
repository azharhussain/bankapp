import 'package:equatable/equatable.dart';
import 'listellipse311_item_model.dart';
import 'package:bankapp/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listone_item_model.dart';

// ignore: must_be_immutable
class SendMoneyModel extends Equatable {
  SendMoneyModel(
      {this.listellipse311ItemList = const [],
      this.dropdownItemList = const [],
      this.listoneItemList = const []});

  List<Listellipse311ItemModel> listellipse311ItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<ListoneItemModel> listoneItemList;

  SendMoneyModel copyWith(
      {List<Listellipse311ItemModel>? listellipse311ItemList,
      List<SelectionPopupModel>? dropdownItemList,
      List<ListoneItemModel>? listoneItemList}) {
    return SendMoneyModel(
      listellipse311ItemList:
          listellipse311ItemList ?? this.listellipse311ItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listoneItemList: listoneItemList ?? this.listoneItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listellipse311ItemList, dropdownItemList, listoneItemList];
}
