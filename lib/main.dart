import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/home/presentation/screen/home_page.dart';
import 'package:techx/features/login/presentation/screen/login_screen.dart';
import 'package:techx/features/register/presentation/screen/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configContainer();
  final getIt = GetIt.instance;
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "login":
            return MaterialPageRoute(builder: (context) {
              return const LoginPage();
            });
          case "signUp":
            return MaterialPageRoute(builder: (context) {
              return const SignUpScreen();
            });
          case "home":
            return MaterialPageRoute(builder: (context) {
              return const HomePage();
            });
        }
        return MaterialPageRoute(builder: (BuildContext context) {
          return Text(settings.name ?? "no route");
        });
      },
      home: const LoginPage(),
    );
  }
}
