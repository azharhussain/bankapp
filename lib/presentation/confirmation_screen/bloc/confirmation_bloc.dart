import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/confirmation_screen/models/confirmation_model.dart';
part 'confirmation_event.dart';
part 'confirmation_state.dart';

class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  ConfirmationBloc(ConfirmationState initialState) : super(initialState) {
    on<ConfirmationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmationInitialEvent event,
    Emitter<ConfirmationState> emit,
  ) async {}
}
