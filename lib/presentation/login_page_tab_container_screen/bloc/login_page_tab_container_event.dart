// ignore_for_file: must_be_immutable

part of 'login_page_tab_container_bloc.dart';

@immutable
abstract class LoginPageTabContainerEvent extends Equatable {}

class LoginPageTabContainerInitialEvent extends LoginPageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
