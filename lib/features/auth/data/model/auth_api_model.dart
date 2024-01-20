import 'package:driver_register/features/auth/domain/entity/auth_entity.dart';

class AuthAPIModel {
  final String? userId;
  final String firstName;
  final String lastName;
  final String phoneNo;
  final String password;

  AuthAPIModel({
     this.userId,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.phoneNo,
  });

  factory AuthAPIModel.fromJson(Map<String, dynamic> json) {
    return AuthAPIModel(
      userId: json['_id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      phoneNo: json['phoneNo'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'phoneNo' : phoneNo,
      'password': password
    };
  }

  // From entity to model
  factory AuthAPIModel.fromEntity(AuthEntity entity) {
    return AuthAPIModel(
      firstName: entity.firstName,
      lastName: entity.lastName,
      phoneNo: entity.phoneNo, 
      password: entity.password,
    );
  }

  // From model to entity
  static AuthEntity toEntity(AuthAPIModel model) {
    return AuthEntity(
      userId: model.userId,
      firstName: model.firstName,
       lastName: model.lastName,
        phoneNo: model.phoneNo,
         password: model.password,
    );
  }
}
