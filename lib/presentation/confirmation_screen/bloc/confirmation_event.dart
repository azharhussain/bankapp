// ignore_for_file: must_be_immutable

part of 'confirmation_bloc.dart';

@immutable
abstract class ConfirmationEvent extends Equatable {}

class ConfirmationInitialEvent extends ConfirmationEvent {
  @override
  List<Object?> get props => [];
}
