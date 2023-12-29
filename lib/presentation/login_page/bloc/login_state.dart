// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.emailOneController,
    this.passwordOneController,
    this.isCheckbox = false,
    this.loginModelObj,
  });

  TextEditingController? emailOneController;

  TextEditingController? passwordOneController;

  LoginModel? loginModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        emailOneController,
        passwordOneController,
        isCheckbox,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailOneController,
    TextEditingController? passwordOneController,
    bool? isCheckbox,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailOneController: emailOneController ?? this.emailOneController,
      passwordOneController:
          passwordOneController ?? this.passwordOneController,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
