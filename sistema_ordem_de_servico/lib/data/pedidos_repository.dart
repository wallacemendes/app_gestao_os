import 'package:firebase_database/firebase_database.dart';
import 'package:sistema_ordem_de_servico/domain/models/pedido.dart';

class PedidoRepository {
  final _databaseReference = FirebaseDatabase.instance.ref();

  Future<void> createPedido(Pedido pedido) async {
    await _databaseReference.child('pedidos').push().set({
      'solicitante': pedido.solicitante,
      'local': pedido.local,
      'dateTime': pedido.dateTime.toString(),
      'descricao': pedido.descricao,
    });
  }

  Future<void> readPedidos() async {
    final snapshot = await _databaseReference.child('pedidos').get();
    if (snapshot.exists) {
      print(snapshot.value);
    }
  }
}
