import 'package:bn/services/auth.dart';
import 'package:flutter/material.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Sign In")),
        body: ElevatedButton(
          child: const Text("sign in Anonymousely"),
          onPressed: () async {
            dynamic resulut = await _auth.signInAnonymously();
            if (resulut == Null) {
              print("sign in error");
            } else {
              print("sign in success");
              print(resulut.uid);
            }
          },
        ));
  }
}
