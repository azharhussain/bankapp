import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/transfer_screen/models/transfer_model.dart';
part 'transfer_event.dart';
part 'transfer_state.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  TransferBloc(TransferState initialState) : super(initialState) {
    on<TransferInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransferInitialEvent event,
    Emitter<TransferState> emit,
  ) async {}
}
