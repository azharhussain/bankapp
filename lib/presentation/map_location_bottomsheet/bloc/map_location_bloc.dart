import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/map_location_bottomsheet/models/map_location_model.dart';
part 'map_location_event.dart';
part 'map_location_state.dart';

class MapLocationBloc extends Bloc<MapLocationEvent, MapLocationState> {
  MapLocationBloc(MapLocationState initialState) : super(initialState) {
    on<MapLocationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MapLocationInitialEvent event,
    Emitter<MapLocationState> emit,
  ) async {}
}
