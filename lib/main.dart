import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chato/pages/chat_page.dart';
import 'package:chato/pages/login_page.dart';
import 'package:chato/pages/resgister_page.dart';

import 'firebase_options.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Chato());
}

class Chato extends StatelessWidget {
  const Chato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
       LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id : (context) => ChatPage()
      },
      initialRoute: LoginPage.id,
    );
  }
}
