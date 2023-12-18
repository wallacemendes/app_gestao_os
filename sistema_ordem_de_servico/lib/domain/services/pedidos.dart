import 'package:sistema_ordem_de_servico/domain/models/pedido.dart';
import 'package:sistema_ordem_de_servico/data/pedidos_repository.dart';

class PedidoService {
  final PedidoRepository _pedidoRepository;

  PedidoService(this._pedidoRepository);

  Future<void> createPedido(Pedido pedido) async {
    await _pedidoRepository.createPedido(pedido);
  }

  Future<void> readPedidos() async {
    await _pedidoRepository.readPedidos();
  }
}
