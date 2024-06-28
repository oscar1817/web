import 'package:flutter/material.dart';
import 'package:local_notifications/services/notification_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const paginaprincipal(),
      ),
    );
  }
}

class paginaprincipal extends StatelessWidget {
  const paginaprincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            //Aqui debemos mostrar la notificacón
            mostrarNotificacion();
          },
          child: const Text('Mostrar la notificación')),
    );
  }
}
