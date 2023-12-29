// ignore_for_file: must_be_immutable

part of 'mine_page_container_bloc.dart';

class MinePageContainerState extends Equatable {
  MinePageContainerState({this.minePageContainerModelObj});

  MinePageContainerModel? minePageContainerModelObj;

  @override
  List<Object?> get props => [
        minePageContainerModelObj,
      ];
  MinePageContainerState copyWith(
      {MinePageContainerModel? minePageContainerModelObj}) {
    return MinePageContainerState(
      minePageContainerModelObj:
          minePageContainerModelObj ?? this.minePageContainerModelObj,
    );
  }
}
