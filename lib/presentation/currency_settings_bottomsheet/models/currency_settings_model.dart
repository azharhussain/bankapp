import 'package:equatable/equatable.dart';
import 'list_item_model.dart';

// ignore: must_be_immutable
class CurrencySettingsModel extends Equatable {
  CurrencySettingsModel({this.listItemList = const []});

  List<ListItemModel> listItemList;

  CurrencySettingsModel copyWith({List<ListItemModel>? listItemList}) {
    return CurrencySettingsModel(
      listItemList: listItemList ?? this.listItemList,
    );
  }

  @override
  List<Object?> get props => [listItemList];
}
