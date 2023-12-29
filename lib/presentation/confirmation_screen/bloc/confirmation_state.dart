// ignore_for_file: must_be_immutable

part of 'confirmation_bloc.dart';

class ConfirmationState extends Equatable {
  ConfirmationState({this.confirmationModelObj});

  ConfirmationModel? confirmationModelObj;

  @override
  List<Object?> get props => [
        confirmationModelObj,
      ];
  ConfirmationState copyWith({ConfirmationModel? confirmationModelObj}) {
    return ConfirmationState(
      confirmationModelObj: confirmationModelObj ?? this.confirmationModelObj,
    );
  }
}
