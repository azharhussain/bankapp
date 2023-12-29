// ignore_for_file: must_be_immutable

part of 'map_location_bloc.dart';

@immutable
abstract class MapLocationEvent extends Equatable {}

class MapLocationInitialEvent extends MapLocationEvent {
  @override
  List<Object?> get props => [];
}
