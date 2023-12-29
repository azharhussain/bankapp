import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listfire_item_model.dart';
import '../models/listvolume_item_model.dart';
import '../models/listwhatsapp_item_model.dart';
import 'package:bankapp/presentation/history_screen/models/history_model.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(HistoryState initialState) : super(initialState) {
    on<HistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryInitialEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(state.copyWith(
        historyModelObj: state.historyModelObj?.copyWith(
            listfireItemList: fillListfireItemList(),
            listvolumeItemList: fillListvolumeItemList(),
            listwhatsappItemList: fillListwhatsappItemList())));
  }

  List<ListfireItemModel> fillListfireItemList() {
    return List.generate(4, (index) => ListfireItemModel());
  }

  List<ListvolumeItemModel> fillListvolumeItemList() {
    return List.generate(3, (index) => ListvolumeItemModel());
  }

  List<ListwhatsappItemModel> fillListwhatsappItemList() {
    return List.generate(2, (index) => ListwhatsappItemModel());
  }
}
