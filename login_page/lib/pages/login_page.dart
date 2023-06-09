import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_page/components/my_textfield.dart';
import 'package:login_page/components/square_tile.dart';
import 'package:login_page/my_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  // sign user in method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/images/vector_bg.png"),
            fit: BoxFit.cover,
          )
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: Column(
                    children: const [
                      Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                 ),

                const SizedBox(height: 30),

                Container(

                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Looks like you don\'t have an account.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Let\'s create a new account for',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'jane.doe@gmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  //username textField
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Name',
                    obscureText: false,
                  ),

                  const SizedBox(height: 15),

                  // password textField
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),

                  // forget password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'By selecting agree and continue below,',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                        Text(
                          'I agree to terms of service and privacy policy',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Sign in Button
                  MyButton(
                    onTap: signUserIn,
                  ),

                  const SizedBox(height: 50),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
