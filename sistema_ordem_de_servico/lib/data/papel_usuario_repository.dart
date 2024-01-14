import 'package:sistema_ordem_de_servico/domain/models/papel_usuario.dart';
import 'package:sistema_ordem_de_servico/domain/models/tipo_usuario.dart';

abstract interface class PapelUsuarioRepository {
  Future<void> salvarPapeldeUsuario(PapelUsuario papelUsuario);
  Future<void> alterarPapelUsuario(PapelUsuario papelUsuario, TipoUsuario tipo);
}
