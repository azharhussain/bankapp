// ignore_for_file: must_be_immutable

part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordEvent extends Equatable {}

class ForgotPasswordInitialEvent extends ForgotPasswordEvent {
  @override
  List<Object?> get props => [];
}
