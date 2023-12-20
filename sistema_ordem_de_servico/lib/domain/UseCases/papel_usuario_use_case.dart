import 'package:sistema_ordem_de_servico/domain/models/tipo_usuario.dart';

import '../models/papel_usuario.dart';

abstract interface class IPapelUsuario {
  void alterarPapel(PapelUsuario papelUsuario, TipoUsuario papel);
  TipoUsuario get checarPapel;
}
