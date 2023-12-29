// ignore_for_file: must_be_immutable

part of 'history_bloc.dart';

@immutable
abstract class HistoryEvent extends Equatable {}

class HistoryInitialEvent extends HistoryEvent {
  @override
  List<Object?> get props => [];
}
