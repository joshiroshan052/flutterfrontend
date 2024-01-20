import 'package:dartz/dartz.dart';
import 'package:driver_register/core/failure/failure.dart';
import 'package:driver_register/features/auth/domain/entity/auth_entity.dart';
import 'package:driver_register/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authUseCaseProvider = Provider.autoDispose<AuthUseCase>(
  (ref) => AuthUseCase(ref.read(authRepositoryProvider)),
);


class AuthUseCase {
  final IAuthRepository _authRepository;

  AuthUseCase(this._authRepository);

   Future<Either<Failure, bool>> registerUser(AuthEntity student) async {
    return await _authRepository.signinUser(student);
  }
}
