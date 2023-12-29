// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  ProfileState({this.profileModelObj});

  ProfileModel? profileModelObj;

  @override
  List<Object?> get props => [
        profileModelObj,
      ];
  ProfileState copyWith({ProfileModel? profileModelObj}) {
    return ProfileState(
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
