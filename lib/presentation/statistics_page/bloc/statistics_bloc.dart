import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/statistics_item_model.dart';
import 'package:bankapp/presentation/statistics_page/models/statistics_model.dart';
part 'statistics_event.dart';
part 'statistics_state.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc(StatisticsState initialState) : super(initialState) {
    on<StatisticsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StatisticsInitialEvent event,
    Emitter<StatisticsState> emit,
  ) async {
    emit(state.copyWith(
        statisticsModelObj: state.statisticsModelObj
            ?.copyWith(statisticsItemList: fillStatisticsItemList())));
  }

  List<StatisticsItemModel> fillStatisticsItemList() {
    return List.generate(2, (index) => StatisticsItemModel());
  }
}
