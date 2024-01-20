import 'package:dartz/dartz.dart';
import 'package:driver_register/core/failure/failure.dart';
import 'package:driver_register/features/auth/data/repository/auth_remote_repository.dart';
import 'package:driver_register/features/auth/domain/entity/auth_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider =
    Provider<IAuthRepository>((ref) => ref.read(authRemoteRepositoryProvider));

abstract class IAuthRepository {
  Future<Either<Failure, bool>> signinUser(AuthEntity user);
}
