import 'package:driver_register/config/constants/hive_table_constant.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

@HiveType(typeId: HiveTableConstant.userTableId)
class AuthHiveModel {
  @HiveField(0)
  final String userId;

  @HiveField(1)
  final String firstName;

  @HiveField(2)
  final String lastName;

  @HiveField(0)
  final String phoneNo;

  @HiveField(0)
  final String password;

  AuthHiveModel({
    String? userId,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.phoneNo,
  }) : userId = userId ?? const Uuid().v4();

  AuthHiveModel.empty()
      : this(
          userId: '',
          firstName: '',
          lastName: '',
          phoneNo: '',
          password: '',
        );

  @override
  String toString() {
    return 'userId: $userId, fname: $firstName, lname: $lastName, phone: $phoneNo, password: $password';
  }
}
