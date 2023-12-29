// ignore_for_file: must_be_immutable

part of 'transfer_bloc.dart';

class TransferState extends Equatable {
  TransferState({this.transferModelObj});

  TransferModel? transferModelObj;

  @override
  List<Object?> get props => [
        transferModelObj,
      ];
  TransferState copyWith({TransferModel? transferModelObj}) {
    return TransferState(
      transferModelObj: transferModelObj ?? this.transferModelObj,
    );
  }
}
