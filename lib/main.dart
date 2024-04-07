import 'package:crud_app/routes/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'your_api_key',
      appId: 'your_app_id',
      messagingSenderId: 'your_messaging_sender_id',
      projectId: 'your_project_id',
      authDomain: 'your_auth_domain',
      storageBucket: 'your_storage_bucket',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
