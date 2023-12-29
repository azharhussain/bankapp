// ignore_for_file: must_be_immutable

part of 'send_money_bloc.dart';

@immutable
abstract class SendMoneyEvent extends Equatable {}

class SendMoneyInitialEvent extends SendMoneyEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends SendMoneyEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
