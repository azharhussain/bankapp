import '../models/listunitedkingdom_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listunitedkingdom_item_model.dart';
import 'package:bankapp/presentation/country_or_region_screen/models/country_or_region_model.dart';
part 'country_or_region_event.dart';
part 'country_or_region_state.dart';

class CountryOrRegionBloc
    extends Bloc<CountryOrRegionEvent, CountryOrRegionState> {
  CountryOrRegionBloc(CountryOrRegionState initialState) : super(initialState) {
    on<CountryOrRegionInitialEvent>(_onInitialize);
    on<ListunitedkingdomItemEvent>(_listunitedkingdomItem);
  }

  _listunitedkingdomItem(
    ListunitedkingdomItemEvent event,
    Emitter<CountryOrRegionState> emit,
  ) {
    List<ListunitedkingdomItemModel> newList =
        List<ListunitedkingdomItemModel>.from(
            state.countryOrRegionModelObj!.listunitedkingdomItemList);
    newList[event.index] =
        newList[event.index].copyWith(radioGroup: event.radioGroup);
    emit(state.copyWith(
        countryOrRegionModelObj: state.countryOrRegionModelObj
            ?.copyWith(listunitedkingdomItemList: newList)));
  }

  List<ListunitedkingdomItemModel> fillListunitedkingdomItemList() {
    return List.generate(7, (index) => ListunitedkingdomItemModel());
  }

  _onInitialize(
    CountryOrRegionInitialEvent event,
    Emitter<CountryOrRegionState> emit,
  ) async {
    emit(state.copyWith(frame225Controller: TextEditingController()));
    emit(state.copyWith(
        countryOrRegionModelObj: state.countryOrRegionModelObj?.copyWith(
            listunitedkingdomItemList: fillListunitedkingdomItemList())));
  }
}
