// ignore_for_file: must_be_immutable

part of 'transfer_request_bloc.dart';

@immutable
abstract class TransferRequestEvent extends Equatable {}

class TransferRequestInitialEvent extends TransferRequestEvent {
  @override
  List<Object?> get props => [];
}
