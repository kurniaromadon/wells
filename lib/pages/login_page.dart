import 'package:flutter/material.dart';
import 'package:wells/components/my_button.dart';
import 'package:wells/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  final void Function()? onTap;

  LoginPage({
    super.key,
    required this.onTap,
    });
  
  //text controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void Login(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             //Logo
             Icon(
              Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
             ),
        
             const SizedBox(height: 25),
        
            //Nama Aplikasi
            const Text(
              "W E L L S",
              style: TextStyle(
                fontSize: 20,
              ),),
            
            const SizedBox(height: 50),
        
            //Email
            MyTextField(
              hintText: "Email", 
              obscureText: false, 
              controller: emailController,
              ),
            
            const SizedBox(height: 10),
        
            //Password
            MyTextField(
              hintText: "Password", 
              obscureText: true, 
              controller: passwordController,
              ),
            
            const SizedBox(height: 10),
        
            //Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Lupa Password?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                )
              ],
            ),

            const SizedBox(height: 25),
        
            //Sign In Button
            MyButton(
              text: "Login", 
              onTap: Login,
            ),

            const SizedBox(height: 25),
        
            //Belum punya akun? Sign Up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum punya akun?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
            
           ],
          ),
        ),
      ),
    );
  }
}