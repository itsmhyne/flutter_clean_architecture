abstract interface class AuthRepository {
  Future<String> signUpWithEmailPassword({
    required String email,
    required String password,
  });
}
