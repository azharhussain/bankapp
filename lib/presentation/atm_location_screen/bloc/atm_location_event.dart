// ignore_for_file: must_be_immutable

part of 'atm_location_bloc.dart';

@immutable
abstract class AtmLocationEvent extends Equatable {}

class AtmLocationInitialEvent extends AtmLocationEvent {
  @override
  List<Object?> get props => [];
}
