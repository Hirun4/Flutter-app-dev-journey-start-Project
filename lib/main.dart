import 'package:bn/firebase_options.dart';
import 'package:bn/models/UserModels.dart';
import 'package:bn/screens/wrapper.dart';
import 'package:bn/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
        initialData: UserModel(uid: " "),
        value: AuthServices().user,
        child: MaterialApp(
          home: Wrapper(),
        ));
  }
}
