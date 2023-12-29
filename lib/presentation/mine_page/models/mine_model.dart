import 'package:equatable/equatable.dart';
import 'minepage_item_model.dart';

// ignore: must_be_immutable
class MineModel extends Equatable {
  MineModel({this.minepageItemList = const []});

  List<MinepageItemModel> minepageItemList;

  MineModel copyWith({List<MinepageItemModel>? minepageItemList}) {
    return MineModel(
      minepageItemList: minepageItemList ?? this.minepageItemList,
    );
  }

  @override
  List<Object?> get props => [minepageItemList];
}
