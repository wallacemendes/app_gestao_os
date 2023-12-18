import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sistema_ordem_de_servico/common/providers.dart';
import 'package:sistema_ordem_de_servico/domain/models/pedido.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  _logout(BuildContext context, WidgetRef ref) async {
    await ref.read(authServiceProvider.notifier).logout();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Pedido> pedidos = [
      Pedido(
          solicitante: "Wallace",
          local: "Paço",
          dateTime: DateTime.now(),
          descricao: "conserto de miolo de porta"),
      Pedido(
          solicitante: "Luciano",
          local: "Edf. Moreira",
          dateTime: DateTime.now(),
          descricao: "Cópia de 3 chaves"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Serviços CMS'),
        ),
        body: ListView.builder(
          itemCount: pedidos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(pedidos[index].solicitante),
              subtitle: Text(pedidos[index].local),
              trailing: Text(pedidos[index].dateTime.toString()),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _logout(context, ref);
          },
          child: const Icon(Icons.logout),
        ));
  }
}
