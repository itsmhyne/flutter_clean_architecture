import 'package:flutter_clean_architecture/core/error/exception.dart';
import 'package:flutter_clean_architecture/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDatasource {
  Future<UserModel> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final SupabaseClient supabaseClient;

  AuthRemoteDatasourceImpl(this.supabaseClient);
  @override
  Future<UserModel> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signUp(email: email, password: password, data: {'name': name});

      if (response.user == null) {
        throw ServerException('User id is null');
      }
      // todo return user model
      return UserModel.fromJson({
        'id': response.user!.id,
        'name': response.user!.userMetadata!['name'],
        'email': response.user!.email,
      });
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
