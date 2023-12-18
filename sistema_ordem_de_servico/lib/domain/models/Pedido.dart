import 'package:sistema_ordem_de_servico/domain/models/Contrato.dart';

class Pedido {
  String solicitante;
  String? telefone;
  String local;
  DateTime dateTime;
  String descricao;
  String? imagem;
  Contrato? contrato;

  Pedido({
    required this.solicitante,
    required this.local,
    required this.dateTime,
    required this.descricao,
    this.imagem,
    this.telefone,
    this.contrato,
  });

  void setContrato(Contrato contrato) {
    this.contrato = contrato;
  }

  void setImagem(String imagem) {
    this.imagem = imagem;
  }

  void setTelefone(String telefone) {
    this.telefone = telefone;
  }

  Pedido createPedido() {
    return Pedido(
      solicitante: solicitante,
      local: local,
      dateTime: DateTime.now(),
      descricao: descricao,
    );
  }

  factory Pedido.fromJson(Map<String, dynamic> json) {
    return Pedido(
      solicitante: json['solicitante'],
      local: json['local'],
      dateTime: DateTime.parse(json['dateTime']),
      descricao: json['descricao'],
      imagem: json['imagem'],
      telefone: json['telefone'],
    );
  }
}
