import 'package:equatable/equatable.dart';
import 'listrectanglesixtythree_item_model.dart';

// ignore: must_be_immutable
class TransferRequestModel extends Equatable {
  TransferRequestModel({this.listrectanglesixtythreeItemList = const []});

  List<ListrectanglesixtythreeItemModel> listrectanglesixtythreeItemList;

  TransferRequestModel copyWith(
      {List<ListrectanglesixtythreeItemModel>?
          listrectanglesixtythreeItemList}) {
    return TransferRequestModel(
      listrectanglesixtythreeItemList: listrectanglesixtythreeItemList ??
          this.listrectanglesixtythreeItemList,
    );
  }

  @override
  List<Object?> get props => [listrectanglesixtythreeItemList];
}
