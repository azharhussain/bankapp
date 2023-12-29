import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/atm_location_screen/models/atm_location_model.dart';
part 'atm_location_event.dart';
part 'atm_location_state.dart';

class AtmLocationBloc extends Bloc<AtmLocationEvent, AtmLocationState> {
  AtmLocationBloc(AtmLocationState initialState) : super(initialState) {
    on<AtmLocationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AtmLocationInitialEvent event,
    Emitter<AtmLocationState> emit,
  ) async {}
}
