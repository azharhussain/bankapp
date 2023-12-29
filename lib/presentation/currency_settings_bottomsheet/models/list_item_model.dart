import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ListItemModel extends Equatable {
  ListItemModel({this.radioGroup = "", this.id});

  String radioGroup;

  String? id;

  ListItemModel copyWith({String? radioGroup, String? id}) {
    return ListItemModel(
      radioGroup: radioGroup ?? this.radioGroup,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [radioGroup, id];
}
