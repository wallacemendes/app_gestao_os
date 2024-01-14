import 'package:firebase_database/firebase_database.dart';
import 'package:sistema_ordem_de_servico/data/papel_usuario_repository.dart';
import 'package:sistema_ordem_de_servico/domain/models/papel_usuario.dart';
import 'package:sistema_ordem_de_servico/domain/models/tipo_usuario.dart';


class PapelUsuarioFirebaseDB implements PapelUsuarioRepository{
  final _databaseReference = FirebaseDatabase.instance.ref();

  @override
  Future<void> alterarPapelUsuario(PapelUsuario papelUsuario, TipoUsuario tipo) async {
    

  }

  @override
  Future<void> salvarPapeldeUsuario(PapelUsuario papelUsuario) {
    // TODO: implement salvarPapeldeUsuario
    throw UnimplementedError();
  }

}