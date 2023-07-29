// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../firebase_options.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Enter you Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: _email,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Enter you password",
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: _password,
                  ),
                  TextButton(
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;
                      try {
                        final userCredentials = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        print(userCredentials);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == "weak-password") {
                          debugPrint(
                              "Vey Weak password, Can't you think of something STRONGER?");
                        } else if (e.code == "email-already-in-use") {
                          debugPrint(
                              "Email is used, WAIT Are you tryin to STEAL another account ?!");
                        } else if (e.code == "invalid-email"){
                          debugPrint(
                              "Invalid Email, Don't you see ? Enter an EMAIL, an EMAIL !");
                        }
                      }
                    },
                    child: const Text("Register"),
                  ),
                ],
              );

            default:
              return const Text("Loading ...");
          }
        },
      ),
    );
  }
}
