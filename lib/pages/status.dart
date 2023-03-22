import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:band_name/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    // socketService.socket.emit()

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ServerStatus: ${socketService.serverStatus}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          socketService.emit('nova-mensagem',
              {'nome:': 'Flutter', 'mensagem': 'Hola desde Flutter'});
        },
      ),
    );
  }
}
