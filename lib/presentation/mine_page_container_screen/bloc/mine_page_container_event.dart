// ignore_for_file: must_be_immutable

part of 'mine_page_container_bloc.dart';

@immutable
abstract class MinePageContainerEvent extends Equatable {}

class MinePageContainerInitialEvent extends MinePageContainerEvent {
  @override
  List<Object?> get props => [];
}
