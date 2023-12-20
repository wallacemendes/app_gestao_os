import 'package:sistema_ordem_de_servico/domain/models/tipo_usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PapelUsuario {
  User usuario;
  TipoUsuario tipo;

  PapelUsuario({
    required this.usuario,
    this.tipo = TipoUsuario.padrao,
  });
}
