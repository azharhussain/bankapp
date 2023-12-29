// ignore_for_file: must_be_immutable

part of 'login_page_tab_container_bloc.dart';

class LoginPageTabContainerState extends Equatable {
  LoginPageTabContainerState({this.loginPageTabContainerModelObj});

  LoginPageTabContainerModel? loginPageTabContainerModelObj;

  @override
  List<Object?> get props => [
        loginPageTabContainerModelObj,
      ];
  LoginPageTabContainerState copyWith(
      {LoginPageTabContainerModel? loginPageTabContainerModelObj}) {
    return LoginPageTabContainerState(
      loginPageTabContainerModelObj:
          loginPageTabContainerModelObj ?? this.loginPageTabContainerModelObj,
    );
  }
}
