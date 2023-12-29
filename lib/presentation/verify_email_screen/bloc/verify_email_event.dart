// ignore_for_file: must_be_immutable

part of 'verify_email_bloc.dart';

@immutable
abstract class VerifyEmailEvent extends Equatable {}

class VerifyEmailInitialEvent extends VerifyEmailEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerifyEmailEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
