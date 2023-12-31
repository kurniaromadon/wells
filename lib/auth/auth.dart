import 'package:flutter/material.dart';
import 'package:wells/auth/login_or_signup.dart';
import 'package:wells/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: null, builder: (context, snapshot) {
        //user is logged in
        if (snapshot.hasData){
          return const HomePage();
        } 
        //user is not logged in
        else{
          return const LoginOrSignup();
        }
      }, ),
    );
  }
}