import '../models/contrato.dart';
import '../models/Servico.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class ContratoUseCase {
  void adicionarContrato(Contrato contrato);
  void adicionarServicos(List<Servico> servicos);
  void adicionarPrestador(User usuario);
  List<Servico> obterTodosServicos();
  List<User> obterPrestadores();
  void editar(Contrato contrato);
  void excluir(Contrato contrato);
}
