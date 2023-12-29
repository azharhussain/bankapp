import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listrectanglesixtythree_item_model.dart';
import 'package:bankapp/presentation/transfer_request_screen/models/transfer_request_model.dart';
part 'transfer_request_event.dart';
part 'transfer_request_state.dart';

class TransferRequestBloc
    extends Bloc<TransferRequestEvent, TransferRequestState> {
  TransferRequestBloc(TransferRequestState initialState) : super(initialState) {
    on<TransferRequestInitialEvent>(_onInitialize);
  }

  List<ListrectanglesixtythreeItemModel> fillListrectanglesixtythreeItemList() {
    return List.generate(5, (index) => ListrectanglesixtythreeItemModel());
  }

  _onInitialize(
    TransferRequestInitialEvent event,
    Emitter<TransferRequestState> emit,
  ) async {
    emit(state.copyWith(searchbarController: TextEditingController()));
    emit(state.copyWith(
        transferRequestModelObj: state.transferRequestModelObj?.copyWith(
            listrectanglesixtythreeItemList:
                fillListrectanglesixtythreeItemList())));
  }
}
