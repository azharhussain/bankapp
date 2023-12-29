// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

@immutable
abstract class SettingsEvent extends Equatable {}

class SettingsInitialEvent extends SettingsEvent {
  @override
  List<Object?> get props => [];
}
