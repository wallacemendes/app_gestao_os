import 'package:sistema_ordem_de_servico/domain/models/Servico.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Contrato {
  String? numero;
  String? titular;
  final String tipoServico;
  final String cnpj;
  final User fiscal;
  final List<Servico>? servicos;
  final List<User>? prestadoresDeServico;

  Contrato({
    required this.cnpj,
    required this.tipoServico,
    required this.fiscal,
    this.numero,
    this.titular,
    this.servicos,
    this.prestadoresDeServico,
  });

  void setNumero(String numero) {
    this.numero = numero;
  }

  void setTitular(String titular) {
    this.titular = titular;
  }
}
