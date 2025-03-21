import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';  // Asegúrate de importar tu archivo de opciones de Firebase

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Asegura la inicialización de los widgets
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,  // Utiliza las opciones de configuración específicas de la plataforma
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Firebase Initialized!'),
      ),
    );
  }
}

