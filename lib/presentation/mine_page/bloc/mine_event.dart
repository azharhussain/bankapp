// ignore_for_file: must_be_immutable

part of 'mine_bloc.dart';

@immutable
abstract class MineEvent extends Equatable {}

class MineInitialEvent extends MineEvent {
  @override
  List<Object?> get props => [];
}
