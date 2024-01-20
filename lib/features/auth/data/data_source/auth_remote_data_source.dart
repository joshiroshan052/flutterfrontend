import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:driver_register/config/constants/api_endpoints.dart';
import 'package:driver_register/core/failure/failure.dart';
import 'package:driver_register/core/network/http_service.dart';
import 'package:driver_register/features/auth/domain/entity/auth_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>(
  (ref) => AuthRemoteDataSource(
    ref.read(httpServiceProvider),
  ),
);

class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource(this.dio);

  Future<Either<Failure, bool>> registerUser(AuthEntity user) async {
    try {
      final response = await dio.post(
        ApiEndpoints.signup,
        data: {
          'firstName': user.firstName,
          'lastName': user.lastName,
          'phoneNo': user.phoneNo,
          'password': user.password,
        },
      );

      // Check the response and handle accordingly
      if (response.statusCode == 200) {
        return const Right(true);
      } else {
        return Left(Failure(
            error: 'Registration failed',
            statusCode: response.statusCode.toString()));
      }
    } catch (error) {
      return Left(
          Failure(error: 'Error during registration', statusCode: '500'));
    }
  }

  Future<Either<Failure, bool>> loginUser(String phone, String password) async {
    try {
      final response = await dio.post(
        ApiEndpoints.login,
        data: {
          'phoneNo': phone,
          'password': password,
        },
      );

      // Check the response and handle accordingly
      if (response.statusCode == 200) {
        return const Right(true);
      } else {
        return Left(Failure(
            error: 'Login failed', statusCode: response.statusCode.toString()));
      }
    } catch (error) {
      return Left(Failure(error: 'Error during login', statusCode: '500'));
    }
  }


  // @override
  //  Future<Either<Failure, bool>> signinUser(AuthEntity user) async {
  //   try{
  //     AuthAPIModel authAPIModel = AuthAPIModel.fromEntity(user);
  //     var response = await dio.post(ApiEndpoints.signup,
  //         data: authAPIModel.toJson());
  //     if (response.statusCode==201){
  //       return const Right(true);
  //     } else {
  //       return Left(
  //           Failure(
  //               error: response.statusMessage.toString(),
  //               statusCode: response.statusCode.toString()
  //           )
  //       );
  //     }
  //   } on DioException catch (e) {
  //     return Left(Failure(error: e.response?.data['message']));
  //   }
  // }
}
