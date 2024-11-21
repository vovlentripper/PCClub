//import 'dart:html';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../services/snack_bar.dart';

class AutorizationPage extends StatefulWidget {
  const AutorizationPage({super.key});

  @override
  State<AutorizationPage> createState() => _AutorizationPageState();
}

class _AutorizationPageState extends State<AutorizationPage> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();

    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    final navigator = Navigator.of(context);

    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailTextInputController.text.trim(),
        password: passwordTextInputController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);

      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        SnackBarService.showSnackBar(
          context,
          'Неправильный email или пароль. Повторите попытку',
          true,
        );
        return;
      } else {
        SnackBarService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
        return;
      }
    }

    navigator.pushNamedAndRemoveUntil('/bottom_navigation_page', (Route<dynamic> route) => false);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Авторизация",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),

        body: Form(
          key: formKey,
          child: Container(
            color: Colors.blue,
            child: Column(
              children: <Widget>[

                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.computer, color: Colors.white, size: 100.00,),
                  ),
                ),

                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.topCenter,

                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        controller: emailTextInputController,
                        validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? "Введите правильный email"
                            :null,
                        decoration: InputDecoration(
                            hintText: "Введите электронную почту",
                            icon: Icon( Icons.email)
                        ),

                      ),

                    )

                ),
                Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child:Expanded(
                          flex: 1,
                          child:  TextFormField(
                            autocorrect: false,
                            controller: passwordTextInputController,
                            obscureText: isHiddenPassword,
                            validator: (value) => value != null && value.length < 8
                                ?"Минимум 8 символов"
                                : null,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                hintText: "Введите пароль",
                                icon: Icon(Icons.lock),
                                suffix: InkWell(
                                  onTap: togglePasswordView,
                                  child: Icon(
                                    isHiddenPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.black,
                                  ),
                                )

                            ),
                          ),
                        )
                    )

                ),
                Expanded(

                    flex: 4,
                    child: ElevatedButton(
                        onPressed: login,
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 100),
                            shape: CircleBorder()
                        ),
                        child: Icon(Icons.arrow_forward))

                ),
                Expanded(
                    flex: 2,
                    child: TextButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed('/signup');
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            textStyle: TextStyle(decoration: TextDecoration.underline)
                        ),

                        child: Text("Регистрация"
                        )
                    )

                ),
                /*
                Expanded(
                    flex: 2,
                    child:  TextButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed('/reset_password');
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.amberAccent,
                            backgroundColor: Colors.black,
                            textStyle: TextStyle(decoration: TextDecoration.underline)
                        ),

                        child:  Text("Сбросить пароль"
                        )
                    )

                )
                  */
              ],
            ),
          ),
        )
    );
  }
}

