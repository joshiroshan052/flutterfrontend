import 'package:dartz/dartz.dart';
import 'package:driver_register/core/failure/failure.dart';
import 'package:driver_register/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:driver_register/features/auth/domain/entity/auth_entity.dart';
import 'package:driver_register/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteRepositoryProvider = Provider.autoDispose<IAuthRepository>(
  (ref) => AuthRemoteRepository(
    authRemoteDataSource: ref.read(authRemoteDataSourceProvider),
  ),
);

class AuthRemoteRepository implements IAuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRemoteRepository({required this.authRemoteDataSource});

  @override
  Future<Either<Failure, bool>> signinUser(AuthEntity user) {
    // TODO: implement signinUser
    return authRemoteDataSource.registerUser(user);
  }
}
