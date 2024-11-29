import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui_auth;

class LoginEcran extends StatelessWidget {
  const LoginEcran({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
            providers: [
              firebase_ui_auth.EmailAuthProvider(),
            ],
            headerBuilder: (context, constraints, _) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Bienvenue',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              );
            },
            subtitleBuilder: (context, action) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  action == AuthAction.signIn
                      ? 'Connectez-vous à votre compte'
                      : 'Créez votre compte',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              );
            },
            footerBuilder: (context, action) {
              return const Padding(
                padding: EdgeInsets.only(
                    top: 16.0, bottom: 24.0, left: 16.0, right: 16.0),
                child: Text(
                  'En continuant, vous acceptez nos conditions d\'utilisation.',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              );
            },
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Mon Profil'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () => FirebaseAuth.instance.signOut(),
              ),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 80,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    snapshot.data?.email ?? '',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
