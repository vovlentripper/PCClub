import 'package:computer_club_vladimir/pages/autentification/autorization_page.dart';
import 'package:computer_club_vladimir/pages/autentification/verify_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class FirebaseStream extends StatelessWidget {
  const FirebaseStream({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return const Scaffold(
            body: Center(child: Text("Что-то пошло не так!"),),
          );
        } else if (snapshot.hasData){
          if(!snapshot.data!.emailVerified){
            return const VerifyEmailScreen();
          }
          return const AutorizationPage();
        } else{
          return AutorizationPage();
        }

      },
    );
  }
}
