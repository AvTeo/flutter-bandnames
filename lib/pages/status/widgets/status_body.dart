import 'package:band_names_app/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ServerStatus: ${socketService.serverStatus}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          // emitir: { nombre: 'flutter', mensaje: 'hola desde flutter'}

          socketService.emit(
            'emitir-mensaje',
            {'nombre': 'flutter', 'mensaje': 'hola desde flutter'},
          );
        },
      ),
    );
  }
}
