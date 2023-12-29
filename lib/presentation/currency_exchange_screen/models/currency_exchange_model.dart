import 'package:equatable/equatable.dart';
import 'package:bankapp/data/models/selectionPopupModel/selection_popup_model.dart';

// ignore: must_be_immutable
class CurrencyExchangeModel extends Equatable {
  CurrencyExchangeModel(
      {this.dropdownItemList = const [], this.dropdownItemList1 = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  CurrencyExchangeModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList,
      List<SelectionPopupModel>? dropdownItemList1}) {
    return CurrencyExchangeModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
