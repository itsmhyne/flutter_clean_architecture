import 'package:either_dart/src/either.dart';
import 'package:flutter_clean_architecture/core/error/exception.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_clean_architecture/features/auth/domain/entities/user.dart';
import 'package:flutter_clean_architecture/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource remoteDatasource;

  AuthRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final user = await remoteDatasource.signUpWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );

      return Right(user);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    }
  }
}

/**
 * Catatan:
 * karena menggunakan Either, maka return nya menggunakan Right(jika benar) dan Left(Jika salah)
 */
