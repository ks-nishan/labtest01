import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Welcome extends StatelessWidget {
  final User? user;
  const Welcome(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome!"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Welcome , ${user!.email}')],
      ),
    );
  }
}
