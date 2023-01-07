import 'package:equatable/equatable.dart';

class PersonModel extends Equatable {
  final String name;
  final String id;
  final String avatar;

  const PersonModel({
    required this.name,
    required this.id,
    required this.avatar,
  });
  @override
  List<Object?> get props => [name, id, avatar];
}
