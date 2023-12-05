import 'package:flutter/material.dart';
import 'package:wells/auth/auth.dart';
import 'package:wells/auth/login_or_signup.dart';
import 'package:wells/firebase_options.dart';
import 'package:wells/pages/home_page.dart';
import 'package:wells/pages/profile_page.dart';
import 'package:wells/pages/users_page.dart';
import 'package:wells/theme/dark_mode.dart';
import 'package:wells/theme/light_mode.dart';


void main() async{
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: LightMode,
      darkTheme: DarkMode,
      routes: {
        '/login_signup_page':(context) => const LoginOrSignup(),
        '/home_page':(context) => const HomePage(),
        '/profile_page':(context) => const ProfilePage(),
        '/users_page':(context) => const UsersPage(),
      },
    );
  }
}