// ignore_for_file: must_be_immutable

part of 'country_or_region_bloc.dart';

class CountryOrRegionState extends Equatable {
  CountryOrRegionState({
    this.frame225Controller,
    this.countryOrRegionModelObj,
  });

  TextEditingController? frame225Controller;

  CountryOrRegionModel? countryOrRegionModelObj;

  @override
  List<Object?> get props => [
        frame225Controller,
        countryOrRegionModelObj,
      ];
  CountryOrRegionState copyWith({
    TextEditingController? frame225Controller,
    CountryOrRegionModel? countryOrRegionModelObj,
  }) {
    return CountryOrRegionState(
      frame225Controller: frame225Controller ?? this.frame225Controller,
      countryOrRegionModelObj:
          countryOrRegionModelObj ?? this.countryOrRegionModelObj,
    );
  }
}
