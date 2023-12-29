// ignore_for_file: must_be_immutable

part of 'currency_settings_bloc.dart';

class CurrencySettingsState extends Equatable {
  CurrencySettingsState({this.currencySettingsModelObj});

  CurrencySettingsModel? currencySettingsModelObj;

  @override
  List<Object?> get props => [
        currencySettingsModelObj,
      ];
  CurrencySettingsState copyWith(
      {CurrencySettingsModel? currencySettingsModelObj}) {
    return CurrencySettingsState(
      currencySettingsModelObj:
          currencySettingsModelObj ?? this.currencySettingsModelObj,
    );
  }
}
