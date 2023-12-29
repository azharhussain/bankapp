// ignore_for_file: must_be_immutable

part of 'mine_bloc.dart';

class MineState extends Equatable {
  MineState({this.mineModelObj});

  MineModel? mineModelObj;

  @override
  List<Object?> get props => [
        mineModelObj,
      ];
  MineState copyWith({MineModel? mineModelObj}) {
    return MineState(
      mineModelObj: mineModelObj ?? this.mineModelObj,
    );
  }
}
