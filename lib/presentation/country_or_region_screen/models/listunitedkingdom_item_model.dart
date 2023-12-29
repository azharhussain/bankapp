import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ListunitedkingdomItemModel extends Equatable {
  ListunitedkingdomItemModel(
      {this.nameTxt = "United Kingdom", this.radioGroup = "", this.id});

  String nameTxt;

  String radioGroup;

  String? id;

  ListunitedkingdomItemModel copyWith(
      {String? nameTxt, String? radioGroup, String? id}) {
    return ListunitedkingdomItemModel(
      nameTxt: nameTxt ?? this.nameTxt,
      radioGroup: radioGroup ?? this.radioGroup,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [nameTxt, radioGroup, id];
}
