import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthRepository {
  Future<UserCredential> signInEmailSenha(
      {required String email, required String senha});
  Future<UserCredential> signUpEmailSenha(
      {required String email, required String senha});
  Future<void> signOut();
  User? get getUser;
  Stream<User?> get authStateChanges;
}
