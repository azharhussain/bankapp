// ignore_for_file: must_be_immutable

part of 'statistics_tab_container_bloc.dart';

@immutable
abstract class StatisticsTabContainerEvent extends Equatable {}

class StatisticsTabContainerInitialEvent extends StatisticsTabContainerEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends StatisticsTabContainerEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
