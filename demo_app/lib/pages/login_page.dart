import 'package:demo_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 1500));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 25),

              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),

              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
               child: Column(
                 children: [
                   TextFormField(
                     decoration: const InputDecoration(
                       hintText: "Enter username",
                       labelText: "Username",
                     ),
                     validator: (value) {
                       if(value!.isEmpty){
                         return "Username cannot be empty";
                       }
                       return null;
                     },
                     onChanged: (value){
                       name = value;
                       setState(() {
                         
                       });
                     },
                   ),

                   TextFormField(
                     obscureText: true,
                     decoration: const InputDecoration(
                       hintText: "Enter password",
                       labelText: "Password",
                     ),
                     validator: (value) {
                       if(value!.isEmpty){
                         return "Password cannot be empty";
                       } else if(value.length < 6){
                         return "Password length should be minimum of 6";
                       }
                       return null;
                     },
                   ),

                   const SizedBox(height: 40),

                   Material(
                     borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                     color: Colors.deepPurple,
                     child: InkWell(
                       onTap: () => moveToHome(context),
                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         width: changeButton ? 50 : 150,
                         height: 50,
                         alignment: Alignment.center,
                         child: changeButton ? const Icon(Icons.done, color: Colors.white,): const Text(
                           "Login",
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 18,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
