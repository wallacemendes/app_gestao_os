import 'package:sistema_ordem_de_servico/domain/models/Usuario.dart';
import 'package:sistema_ordem_de_servico/domain/models/Servico.dart';

class Contrato {
  String? numero;
  String? titular;
  final String tipoServico;
  final String cnpj;
  final Usuario fiscal;
  final List<Servico>? servicos;
  final List<Usuario>? prestadoresDeServico;

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
