// ignore_for_file: must_be_immutable

part of 'national_bank_bloc.dart';

@immutable
abstract class NationalBankEvent extends Equatable {}

class NationalBankInitialEvent extends NationalBankEvent {
  @override
  List<Object?> get props => [];
}
