import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String? userId;
  final String firstName;
  final String lastName;
  final String phoneNo;
  final String password;

  const AuthEntity(
      { this.userId,
      required this.firstName,
      required this.lastName,
      required this.phoneNo,
      required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [userId, firstName, lastName, phoneNo, password];
}
