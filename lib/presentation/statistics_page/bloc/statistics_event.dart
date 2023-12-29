// ignore_for_file: must_be_immutable

part of 'statistics_bloc.dart';

@immutable
abstract class StatisticsEvent extends Equatable {}

class StatisticsInitialEvent extends StatisticsEvent {
  @override
  List<Object?> get props => [];
}
