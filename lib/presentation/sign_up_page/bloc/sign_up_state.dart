// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.languageController,
    this.emailOneController,
    this.frame212Controller,
    this.frame213Controller,
    this.frame214Controller,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.signUpModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? emailOneController;

  TextEditingController? frame212Controller;

  TextEditingController? frame213Controller;

  TextEditingController? frame214Controller;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        languageController,
        emailOneController,
        frame212Controller,
        frame213Controller,
        frame214Controller,
        selectedDropDownValue,
        selectedDropDownValue1,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? languageController,
    TextEditingController? emailOneController,
    TextEditingController? frame212Controller,
    TextEditingController? frame213Controller,
    TextEditingController? frame214Controller,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      languageController: languageController ?? this.languageController,
      emailOneController: emailOneController ?? this.emailOneController,
      frame212Controller: frame212Controller ?? this.frame212Controller,
      frame213Controller: frame213Controller ?? this.frame213Controller,
      frame214Controller: frame214Controller ?? this.frame214Controller,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
