// ignore_for_file: must_be_immutable

part of 'verify_email_bloc.dart';

class VerifyEmailState extends Equatable {
  VerifyEmailState({
    this.otpController,
    this.verifyEmailModelObj,
  });

  TextEditingController? otpController;

  VerifyEmailModel? verifyEmailModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verifyEmailModelObj,
      ];
  VerifyEmailState copyWith({
    TextEditingController? otpController,
    VerifyEmailModel? verifyEmailModelObj,
  }) {
    return VerifyEmailState(
      otpController: otpController ?? this.otpController,
      verifyEmailModelObj: verifyEmailModelObj ?? this.verifyEmailModelObj,
    );
  }
}
