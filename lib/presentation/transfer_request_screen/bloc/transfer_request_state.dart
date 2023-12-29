// ignore_for_file: must_be_immutable

part of 'transfer_request_bloc.dart';

class TransferRequestState extends Equatable {
  TransferRequestState({
    this.searchbarController,
    this.transferRequestModelObj,
  });

  TextEditingController? searchbarController;

  TransferRequestModel? transferRequestModelObj;

  @override
  List<Object?> get props => [
        searchbarController,
        transferRequestModelObj,
      ];
  TransferRequestState copyWith({
    TextEditingController? searchbarController,
    TransferRequestModel? transferRequestModelObj,
  }) {
    return TransferRequestState(
      searchbarController: searchbarController ?? this.searchbarController,
      transferRequestModelObj:
          transferRequestModelObj ?? this.transferRequestModelObj,
    );
  }
}
