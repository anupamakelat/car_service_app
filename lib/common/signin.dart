// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/common/signup.dart';
import 'package:flutter_car_service_app/common/widgets/text_field.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
       gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [Color.fromARGB(255, 146, 236, 241),Color.fromARGB(255, 251, 251, 251)])
      
    ),
      child: Scaffold(
           backgroundColor: Colors.transparent,
          body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Form(key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Sign In",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),SizedBox(height: 40,),
                CustomTextFormField(
                  hintText: 'Email',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 26,
                ),
                CustomTextFormField(
                  hintText: 'Password',
                  controller: passController,
                  obscureText: true,
                ),
                SizedBox(height: 49,),
                Container(
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
                      'Sign In',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 227, 225, 219)),
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                TextButton(onPressed: (){Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (signup)=>const SingUp()), (route) => false);}, child: const Text('I don\'t have an accont ',style: TextStyle(color: Colors.black),))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
