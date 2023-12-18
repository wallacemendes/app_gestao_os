import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sistema_ordem_de_servico/common/providers.dart';
import 'package:sistema_ordem_de_servico/domain/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:sistema_ordem_de_servico/presentation/views/home_page.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class AuthControllerCheck extends ConsumerWidget {
  const AuthControllerCheck({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<AuthStateService> auth = ref.watch(authServiceProvider);

    return auth.when(
      data: (auth) {
        if (auth.isAuth) {
          return const HomePage();
        } else {
          return const SignInScreen();
        }
      },
      loading: () => loading(),
      error: (error, stackTrace) => errorWidget(error, stackTrace),
    );
  }
}

Widget loading() {
  return const Scaffold(
    body: Center(
      child: CircularProgressIndicator(),
    ),
  );
}

Widget errorWidget(e, st) {
  return Scaffold(
    body: Center(
      child: Text('Erro: $e'),
    ),
  );
}
