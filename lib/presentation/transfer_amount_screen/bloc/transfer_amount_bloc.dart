import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/transfer_amount_screen/models/transfer_amount_model.dart';
part 'transfer_amount_event.dart';
part 'transfer_amount_state.dart';

class TransferAmountBloc
    extends Bloc<TransferAmountEvent, TransferAmountState> {
  TransferAmountBloc(TransferAmountState initialState) : super(initialState) {
    on<TransferAmountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransferAmountInitialEvent event,
    Emitter<TransferAmountState> emit,
  ) async {}
}
