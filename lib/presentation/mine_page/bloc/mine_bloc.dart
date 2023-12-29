import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/minepage_item_model.dart';
import 'package:bankapp/presentation/mine_page/models/mine_model.dart';
part 'mine_event.dart';
part 'mine_state.dart';

class MineBloc extends Bloc<MineEvent, MineState> {
  MineBloc(MineState initialState) : super(initialState) {
    on<MineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MineInitialEvent event,
    Emitter<MineState> emit,
  ) async {
    emit(state.copyWith(
        mineModelObj: state.mineModelObj
            ?.copyWith(minepageItemList: fillMinepageItemList())));
  }

  List<MinepageItemModel> fillMinepageItemList() {
    return List.generate(4, (index) => MinepageItemModel());
  }
}
