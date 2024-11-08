import 'package:examen/modules/auth/screens/login.dart';
import 'package:examen/modules/auth/screens/register.dart';
import 'package:examen/modules/navigation.dart';
import 'package:examen/utils/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplahScreen(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/navigation': (context) => const Navigation(),
      },
    );
  }
}
