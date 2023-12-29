import 'package:equatable/equatable.dart';
import 'listfire_item_model.dart';
import 'listvolume_item_model.dart';
import 'listwhatsapp_item_model.dart';

// ignore: must_be_immutable
class HistoryModel extends Equatable {
  HistoryModel(
      {this.listfireItemList = const [],
      this.listvolumeItemList = const [],
      this.listwhatsappItemList = const []});

  List<ListfireItemModel> listfireItemList;

  List<ListvolumeItemModel> listvolumeItemList;

  List<ListwhatsappItemModel> listwhatsappItemList;

  HistoryModel copyWith(
      {List<ListfireItemModel>? listfireItemList,
      List<ListvolumeItemModel>? listvolumeItemList,
      List<ListwhatsappItemModel>? listwhatsappItemList}) {
    return HistoryModel(
      listfireItemList: listfireItemList ?? this.listfireItemList,
      listvolumeItemList: listvolumeItemList ?? this.listvolumeItemList,
      listwhatsappItemList: listwhatsappItemList ?? this.listwhatsappItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listfireItemList, listvolumeItemList, listwhatsappItemList];
}
