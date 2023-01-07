import 'package:equatable/equatable.dart';

class PersonModel extends Equatable {
  final String name;
  final String id;
  final String avatar;
  final String email;
  final String phone;
  final int rating;

  const PersonModel({
    required this.name,
    required this.id,
    required this.avatar,
    required this.email,
    required this.phone,
    required this.rating,
  });
  @override
  List<Object?> get props => [name, id, avatar, email, phone, rating,];
}
