// ignore_for_file: must_be_immutable

part of 'card_settings_bloc.dart';

class CardSettingsState extends Equatable {
  CardSettingsState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.cardSettingsModelObj,
  });

  CardSettingsModel? cardSettingsModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        radioGroup2,
        cardSettingsModelObj,
      ];
  CardSettingsState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    CardSettingsModel? cardSettingsModelObj,
  }) {
    return CardSettingsState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      cardSettingsModelObj: cardSettingsModelObj ?? this.cardSettingsModelObj,
    );
  }
}
