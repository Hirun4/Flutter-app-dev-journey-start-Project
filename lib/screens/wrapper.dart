import 'package:bn/models/UserModels.dart';
import 'package:bn/screens/Home/home.dart';
import 'package:bn/screens/authentications/authenticate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<UserModel?>(context);

    if (User == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
