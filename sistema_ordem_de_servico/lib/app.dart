import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sistema_ordem_de_servico/presentation/controllers/auth_controller.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providers = [EmailAuthProvider()];

    return MaterialApp(
        title: 'Serviços CMS',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          unselectedWidgetColor: Colors.grey,
          appBarTheme: const AppBarTheme(
            elevation: 2.0,
            centerTitle: true,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthControllerCheck(),
          '/login': (context) => SignInScreen(providers: providers),
          '/register': (context) => RegisterScreen(providers: providers),
          '/profile': (context) => ProfileScreen(providers: providers),
        });
  }
}
