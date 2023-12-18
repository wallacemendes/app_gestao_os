import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sistema_ordem_de_servico/data/firebase/auth_repository.dart';
import 'package:sistema_ordem_de_servico/domain/services/auth_service.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) {
    return AuthRepository();
  },
);

final authServiceProvider =
    AsyncNotifierProvider<AuthNotifier, AuthStateService>(
  () => AuthNotifier(),
);
