import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/nationalbank_item_model.dart';
import 'package:bankapp/presentation/national_bank_page/models/national_bank_model.dart';
part 'national_bank_event.dart';
part 'national_bank_state.dart';

class NationalBankBloc extends Bloc<NationalBankEvent, NationalBankState> {
  NationalBankBloc(NationalBankState initialState) : super(initialState) {
    on<NationalBankInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NationalBankInitialEvent event,
    Emitter<NationalBankState> emit,
  ) async {
    emit(state.copyWith(
        nationalBankModelObj: state.nationalBankModelObj
            ?.copyWith(nationalbankItemList: fillNationalbankItemList())));
  }

  List<NationalbankItemModel> fillNationalbankItemList() {
    return List.generate(2, (index) => NationalbankItemModel());
  }
}
