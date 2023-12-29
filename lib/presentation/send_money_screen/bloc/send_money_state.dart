// ignore_for_file: must_be_immutable

part of 'send_money_bloc.dart';

class SendMoneyState extends Equatable {
  SendMoneyState({
    this.selectedDropDownValue,
    this.sendMoneyModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SendMoneyModel? sendMoneyModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        sendMoneyModelObj,
      ];
  SendMoneyState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SendMoneyModel? sendMoneyModelObj,
  }) {
    return SendMoneyState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      sendMoneyModelObj: sendMoneyModelObj ?? this.sendMoneyModelObj,
    );
  }
}
