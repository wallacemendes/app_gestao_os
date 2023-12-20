import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sistema_ordem_de_servico/common/providers.dart';
import 'package:sistema_ordem_de_servico/common/exceptions.dart';
import 'package:sistema_ordem_de_servico/domain/models/papel_usuario.dart';

class AuthStateService {
  final bool isAuth;
  final dynamic user;

  AuthStateService({required this.isAuth, this.user});
}

class AuthNotifier extends AsyncNotifier<AuthStateService> {
  @override
  FutureOr<AuthStateService> build() {
    final auth = ref.read(authRepositoryProvider);
    auth.authStateChanges.listen((user) {
      state =
          AsyncValue.data(AuthStateService(isAuth: user != null, user: user));
    });
    return AuthStateService(isAuth: auth.getUser != null, user: auth.getUser);
  }

  void _getUser() {
    final auth = ref.read(authRepositoryProvider);
    state = AsyncValue.data(
        AuthStateService(isAuth: auth.getUser != null, user: auth.getUser));
    print("Recuperando email $ref.read(authRepositoryProvider).getUser!.email");
  }

  void _atribuirPapel(dynamic usuario) {
    if (usuario != null) {
      PapelUsuario papel = PapelUsuario(usuario: usuario);
    }
    //call save to database interface
  }

  Future<void> registrarComEmailSenha(String email, String senha) async {
    final auth = ref.read(authRepositoryProvider);
    try {
      await auth.signUpEmailSenha(email: email, senha: senha);
      _atribuirPapel(auth.getUser);
      _getUser();
    } on Exception catch (e) {
      throw AuthException(e.toString());
    }
  }

  Future<void> loginComEmailSenha(String email, String senha) async {
    try {
      await ref
          .read(authRepositoryProvider)
          .signInEmailSenha(email: email, senha: senha);
      _getUser();
    } on Exception catch (e) {
      throw AuthException(e.toString());
    }
  }

  Future<void> logout() async {
    try {
      await ref.read(authRepositoryProvider).signOut();
      _getUser();
      print('Deslogando aqui $ref.read(authRepositoryProvider).getUser!.email');
    } on Exception catch (e) {
      throw AuthException(e.toString());
    }
  }
}
