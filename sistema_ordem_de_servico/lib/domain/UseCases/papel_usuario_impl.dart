import 'package:sistema_ordem_de_servico/domain/UseCases/papel_usuario_use_case.dart';
import 'package:sistema_ordem_de_servico/domain/models/papel_usuario.dart';
import 'package:sistema_ordem_de_servico/domain/models/tipo_usuario.dart';
import '../../data/auth_repository.dart';

class UsuarioImpl implements IPapelUsuario {
  AuthRepository auth;

  UsuarioImpl({required this.auth});

  @override
  PapelUsuario alterarPapel(PapelUsuario papelUsuario, TipoUsuario papel) {
    if (auth.getUser != null) {
      papelUsuario.usuario = auth.getUser!;
      papelUsuario.tipo = papel;
    }

    return papelUsuario;
  }

  @override
  // TODO: implement checarPapel
  TipoUsuario get checarPapel => throw UnimplementedError();
}
