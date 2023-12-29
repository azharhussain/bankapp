// ignore_for_file: must_be_immutable

part of 'national_bank_bloc.dart';

class NationalBankState extends Equatable {
  NationalBankState({this.nationalBankModelObj});

  NationalBankModel? nationalBankModelObj;

  @override
  List<Object?> get props => [
        nationalBankModelObj,
      ];
  NationalBankState copyWith({NationalBankModel? nationalBankModelObj}) {
    return NationalBankState(
      nationalBankModelObj: nationalBankModelObj ?? this.nationalBankModelObj,
    );
  }
}
