import '../models/pedido.dart';

abstract interface class PedidoUseCase {
  void abrirPedido(Pedido pedido);
  void editarPedido(Pedido pedido);
  void excluirPedido(Pedido pedido);
  void aprovarPedido(Pedido pedido);
  void executarPedido(Pedido pedido);
  void adicionarServicos(Pedido pedido);
  void finalizarPedido(Pedido pedido);
  List<Pedido> listarPedidos();
  Pedido buscarPedido({String? solicitante, String? local, DateTime? data});
}
