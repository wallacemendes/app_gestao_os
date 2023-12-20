import 'package:firebase_auth/firebase_auth.dart';
import 'package:sistema_ordem_de_servico/data/auth_repository.dart';

class RemoteAuthFirebase implements AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<UserCredential> signInEmailSenha(
      {required String email, required String senha}) async {
    try {
      return await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<UserCredential> signUpEmailSenha(
      {required String email, required String senha}) {
    try {
      return _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: senha);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  @override
  User? get getUser => _firebaseAuth.currentUser;
}
