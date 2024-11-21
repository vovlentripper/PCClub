import 'package:computer_club_vladimir/pages/autentification/autorization_page.dart';
import 'package:computer_club_vladimir/pages/autentification/registre_page.dart';
import 'package:computer_club_vladimir/pages/autentification/verify_email.dart';
import 'package:computer_club_vladimir/pages/bottom_navigation_page.dart';
import 'package:computer_club_vladimir/services/firebase_streem.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const FirebaseStream(),
        '/home' : (context) => const AutorizationPage(),
        '/signup' : (context) => const RegistrePage(),
        //'/reset_password' : (context) => const ResetPasswordScreen(),
        'verify_email' : (context) => const VerifyEmailScreen(),
        '/bottom_navigation_page' : (context) => const BottomNavigationPage(),



      },
      initialRoute: '/',
    );
  }
}
