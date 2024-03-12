// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/common/signin.dart';
import 'package:flutter_car_service_app/common/widgets/text_field.dart';
import 'package:flutter_car_service_app/common/widgets/validations.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController conformpassController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  validations ?valid;

  final formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [Color.fromARGB(255, 146, 236, 241),Color.fromARGB(255, 251, 251, 251)])
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30,top:150),
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextFormField(validator: valid?.nameValidator(nameController.text, 'Enter Your Name', 'Full Name only contains letters'),
                      hintText: 'Name',
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    CustomTextFormField(
                      hintText: 'Phone',
                      controller: phoneController,
                      obscureText: true,
                    ),const SizedBox(
                      height: 26,
                    ),
                    CustomTextFormField(
                      hintText: 'Email',
                      controller: emailController,
                      obscureText: true,
                    ),const SizedBox(
                      height: 26,
                    ),
                    CustomTextFormField(
                      hintText: 'Create Password',
                      controller: passController,
                      obscureText: true,
                    ),const SizedBox(
                      height: 26,
                    ),
                    CustomTextFormField(
                      hintText: 'Conform Password',
                      controller: conformpassController,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 49,
                    ),
                    InkWell(
                      onTap: (){
                        
                      },
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 227, 225, 219)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (signin) => const SingIn()),
                              (route) => false);
                        },
                        child: const Text(
                          'I  have an accont ',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
