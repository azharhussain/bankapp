import 'package:equatable/equatable.dart';
import 'package:bankapp/data/models/selectionPopupModel/selection_popup_model.dart';

// ignore: must_be_immutable
class SignUpModel extends Equatable {
  SignUpModel(
      {this.dropdownItemList = const [], this.dropdownItemList1 = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  SignUpModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList,
      List<SelectionPopupModel>? dropdownItemList1}) {
    return SignUpModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
