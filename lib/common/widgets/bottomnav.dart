// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_car_service_app/user/account.dart';
import 'package:flutter_car_service_app/user/cart.dart';
import 'package:flutter_car_service_app/user/home.dart';
import 'package:flutter_car_service_app/user/orders.dart';

class MyNav extends StatefulWidget {
  const MyNav({super.key});

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  int indexNum = 0;
  List screen = [
    MyHome(),
    Orders(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(255, 255, 255, 255),
        height: 60,
        animationCurve: Curves.ease,
        buttonBackgroundColor:   Colors.blue[900],
        backgroundColor: const Color.fromARGB(255, 217, 217, 217),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            //color: Color.fromARGB(255, 37, 34, 34),
          ),
          Icon(Icons.list, size: 30),
          Icon(CupertinoIcons.bell)
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            indexNum = index;
          });
        },
      ),
      body: screen[indexNum],
    );
  }
}
