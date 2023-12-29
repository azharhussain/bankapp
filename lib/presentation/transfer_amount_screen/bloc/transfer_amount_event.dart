// ignore_for_file: must_be_immutable

part of 'transfer_amount_bloc.dart';

@immutable
abstract class TransferAmountEvent extends Equatable {}

class TransferAmountInitialEvent extends TransferAmountEvent {
  @override
  List<Object?> get props => [];
}
