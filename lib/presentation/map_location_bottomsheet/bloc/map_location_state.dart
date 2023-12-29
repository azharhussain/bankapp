// ignore_for_file: must_be_immutable

part of 'map_location_bloc.dart';

class MapLocationState extends Equatable {
  MapLocationState({this.mapLocationModelObj});

  MapLocationModel? mapLocationModelObj;

  @override
  List<Object?> get props => [
        mapLocationModelObj,
      ];
  MapLocationState copyWith({MapLocationModel? mapLocationModelObj}) {
    return MapLocationState(
      mapLocationModelObj: mapLocationModelObj ?? this.mapLocationModelObj,
    );
  }
}
