// ignore_for_file: must_be_immutable

part of 'forgot_password_bloc.dart';

class ForgotPasswordState extends Equatable {
  ForgotPasswordState({
    this.emailController,
    this.forgotPasswordModelObj,
  });

  TextEditingController? emailController;

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props => [
        emailController,
        forgotPasswordModelObj,
      ];
  ForgotPasswordState copyWith({
    TextEditingController? emailController,
    ForgotPasswordModel? forgotPasswordModelObj,
  }) {
    return ForgotPasswordState(
      emailController: emailController ?? this.emailController,
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}
