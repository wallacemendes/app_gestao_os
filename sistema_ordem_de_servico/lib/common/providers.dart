import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sistema_ordem_de_servico/data/auth_repository.dart';
import 'package:sistema_ordem_de_servico/domain/services/auth_service.dart';
import 'package:sistema_ordem_de_servico/infra/remote_auth_firebase.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) {
    return RemoteAuthFirebase();
  },
);

final authServiceProvider =
    AsyncNotifierProvider<AuthNotifier, AuthStateService>(
  () => AuthNotifier(),
);
