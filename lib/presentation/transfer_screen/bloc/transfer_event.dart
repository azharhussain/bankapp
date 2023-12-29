// ignore_for_file: must_be_immutable

part of 'transfer_bloc.dart';

@immutable
abstract class TransferEvent extends Equatable {}

class TransferInitialEvent extends TransferEvent {
  @override
  List<Object?> get props => [];
}
