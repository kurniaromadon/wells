import 'package:flutter/material.dart';
import 'package:wells/components/my_button.dart';
import 'package:wells/components/my_textfield.dart';

class SignupPage extends StatelessWidget {
  final void Function()? onTap;

  SignupPage({
    super.key,
    required this.onTap,
    });

  //text controller
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPwController = TextEditingController();

  //signup method
  void signup() {}
    

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

            //Username
            MyTextField(
              hintText: "Username", 
              obscureText: false, 
              controller: usernameController,
            ),
            
            const SizedBox(height: 10),
        
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

            //Confirm Password
            MyTextField(
              hintText: "Konfirmasi Password", 
              obscureText: true, 
              controller: confirmPwController,
              ),
                 
            const SizedBox(height: 25),
        
            //Sign Up Button
            MyButton(
              text: "Sign Up", 
              onTap: signup,
            ),

            const SizedBox(height: 25),
        
            //Sudah punya akun? Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sudah punya akun??",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "Login",
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