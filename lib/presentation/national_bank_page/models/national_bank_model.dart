import 'package:equatable/equatable.dart';
import 'nationalbank_item_model.dart';

// ignore: must_be_immutable
class NationalBankModel extends Equatable {
  NationalBankModel({this.nationalbankItemList = const []});

  List<NationalbankItemModel> nationalbankItemList;

  NationalBankModel copyWith(
      {List<NationalbankItemModel>? nationalbankItemList}) {
    return NationalBankModel(
      nationalbankItemList: nationalbankItemList ?? this.nationalbankItemList,
    );
  }

  @override
  List<Object?> get props => [nationalbankItemList];
}
