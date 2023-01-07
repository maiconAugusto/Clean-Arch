import 'package:equatable/equatable.dart';

class PersonModel extends Equatable {
  final String name;
  final String id;
  final String avatar;
  final String email;
  final String phone;

  const PersonModel({
    required this.name,
    required this.id,
    required this.avatar,
    required this.email,
    required this.phone,
  });
  @override
  List<Object?> get props => [name, id, avatar];
}
