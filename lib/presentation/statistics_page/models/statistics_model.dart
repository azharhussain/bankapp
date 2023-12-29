import 'package:equatable/equatable.dart';
import 'statistics_item_model.dart';

// ignore: must_be_immutable
class StatisticsModel extends Equatable {
  StatisticsModel({this.statisticsItemList = const []});

  List<StatisticsItemModel> statisticsItemList;

  StatisticsModel copyWith({List<StatisticsItemModel>? statisticsItemList}) {
    return StatisticsModel(
      statisticsItemList: statisticsItemList ?? this.statisticsItemList,
    );
  }

  @override
  List<Object?> get props => [statisticsItemList];
}
