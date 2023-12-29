import 'package:equatable/equatable.dart';
import 'package:bankapp/data/models/selectionPopupModel/selection_popup_model.dart';

// ignore: must_be_immutable
class StatisticsTabContainerModel extends Equatable {
  StatisticsTabContainerModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  StatisticsTabContainerModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return StatisticsTabContainerModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
