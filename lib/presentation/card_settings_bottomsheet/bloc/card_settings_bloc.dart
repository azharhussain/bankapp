import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/card_settings_bottomsheet/models/card_settings_model.dart';
part 'card_settings_event.dart';
part 'card_settings_state.dart';

class CardSettingsBloc extends Bloc<CardSettingsEvent, CardSettingsState> {
  CardSettingsBloc(CardSettingsState initialState) : super(initialState) {
    on<CardSettingsInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CardSettingsState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<CardSettingsState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<CardSettingsState> emit,
  ) {
    emit(state.copyWith(radioGroup2: event.value));
  }

  _onInitialize(
    CardSettingsInitialEvent event,
    Emitter<CardSettingsState> emit,
  ) async {
    emit(state.copyWith(radioGroup: "", radioGroup1: "", radioGroup2: ""));
  }
}
