// ignore_for_file: must_be_immutable

part of 'statistics_tab_container_bloc.dart';

class StatisticsTabContainerState extends Equatable {
  StatisticsTabContainerState({
    this.selectedDropDownValue,
    this.statisticsTabContainerModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  StatisticsTabContainerModel? statisticsTabContainerModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        statisticsTabContainerModelObj,
      ];
  StatisticsTabContainerState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    StatisticsTabContainerModel? statisticsTabContainerModelObj,
  }) {
    return StatisticsTabContainerState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      statisticsTabContainerModelObj:
          statisticsTabContainerModelObj ?? this.statisticsTabContainerModelObj,
    );
  }
}
