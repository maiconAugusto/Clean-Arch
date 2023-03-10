import 'package:equatable/equatable.dart';

class AppApiPersonListResponse extends Equatable {
  final List<AppApiPersonDetailResponse>? persons;
  const AppApiPersonListResponse({
    required this.persons,
  });

  @override
  List<Object?> get props => [persons];

  factory AppApiPersonListResponse.fromJson(Map<String, dynamic> json) {
    return AppApiPersonListResponse(
      persons: json.isEmpty ? [] : json as List<AppApiPersonDetailResponse>,
    );
  }
}

class AppApiPersonDetailResponse extends Equatable {
  final String? name;
  final String? id;
  final String? avatar;
  final String? email;
  final String? phone;
  final int? rating;

  const AppApiPersonDetailResponse({
    required this.name,
    required this.id,
    required this.avatar,
    required this.email,
    required this.phone,
    required this.rating,
  });

  factory AppApiPersonDetailResponse.fromJson(Map<String, dynamic> json) {
    return AppApiPersonDetailResponse(
      name: json['name'] != null ? json['name'] as String : null,
      id: json['id'] != null ? json['id'] as String : null,
      avatar: json['avatar'] != null ? json['avatar'] as String : null,
      email: json['email'] != null ? json['email'] as String : null,
      phone: json['phone'] != null ? json['phone'] as String : null,
      rating: json['rating'] != null
          ? int.tryParse(json['rating'].toString())
          : null,
    );
  }

  @override
  List<Object?> get props => [
        name,
        id,
        avatar,
        email,
        phone,
        rating,
      ];
}
