// ignore_for_file: must_be_immutable

part of 'country_or_region_bloc.dart';

@immutable
abstract class CountryOrRegionEvent extends Equatable {}

class CountryOrRegionInitialEvent extends CountryOrRegionEvent {
  @override
  List<Object?> get props => [];
}

class ListunitedkingdomItemEvent extends CountryOrRegionEvent {
  ListunitedkingdomItemEvent({
    required this.index,
    this.radioGroup,
  });

  int index;

  String? radioGroup;

  @override
  List<Object?> get props => [
        index,
        radioGroup,
      ];
}
