import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplahScreenState createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        print(user.uid);
        Navigator.pushReplacementNamed(context, '/navigation');
      } else {
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset('assets/logo.jpg'),
      ),
    );
  }
}
