import 'package:equatable/equatable.dart';
import 'listunitedkingdom_item_model.dart';

// ignore: must_be_immutable
class CountryOrRegionModel extends Equatable {
  CountryOrRegionModel({this.listunitedkingdomItemList = const []});

  List<ListunitedkingdomItemModel> listunitedkingdomItemList;

  CountryOrRegionModel copyWith(
      {List<ListunitedkingdomItemModel>? listunitedkingdomItemList}) {
    return CountryOrRegionModel(
      listunitedkingdomItemList:
          listunitedkingdomItemList ?? this.listunitedkingdomItemList,
    );
  }

  @override
  List<Object?> get props => [listunitedkingdomItemList];
}
