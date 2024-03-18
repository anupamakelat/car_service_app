// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_car_service_app/database/getUser.dart';
import 'package:flutter_car_service_app/database/signup/model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  SignupDetails? currentUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
  }

  Future<void> getUser() async {
    print('sdfsdfsdf');
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print('2sdfsdfsdf');
    var userEmail = prefs.getString('currentUser');

    final useBox = await Hive.openBox<SignupDetails>('signup_db');

    print(useBox.values);
    currentUser = useBox.values.firstWhere(
      (user) => user.email == userEmail,
    );
    setState(() {});
    print('this is the emil:${currentUser!.email},');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 238, 238),
      body: Column(children: [
        Divider(
          height: 1,
          color: const Color.fromARGB(255, 71, 68, 68),
          thickness: 2,
        ),
        Container(
          //height: 70,
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 46,
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o='),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${currentUser?.name}',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    currentUser!.phone,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 0.9,
          color: const Color.fromARGB(255, 71, 68, 68),
          thickness: 0.9,
        ),
        Row(
          children: [Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(FontAwesomeIcons.bagShopping,size: 35,color: Color.fromARGB(255, 50, 192, 57),),
          ),
          SizedBox(width: 10,),
          Text('Orders',style: GoogleFonts.poppins(fontSize: 18),),Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.arrow_forward_ios),
          )],
          
        ), Divider(
          height: 0.9,
          color: const Color.fromARGB(255, 71, 68, 68),
          thickness: 0.9,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(CupertinoIcons.chat_bubble_text,size: 35,color:Color.fromARGB(255, 50, 192, 57) ,),
            ),
            SizedBox(width: 10,),
            Text('Customer Support & FAQ',style: GoogleFonts.poppins(fontSize:18),),Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        Divider(
          height: 0.9,
          color: const Color.fromARGB(255, 71, 68, 68),
          thickness: 0.9,
        ),
         Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(CupertinoIcons.location_solid,size: 35,color:Color.fromARGB(255, 50, 192, 57) ,),
            ),
            SizedBox(width: 10,),
            Text('Address',style: GoogleFonts.poppins(fontSize:18),),Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
         Divider(
          height: 0.9,
          color: const Color.fromARGB(255, 71, 68, 68),
          thickness: 0.9,
        ),
         Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.payments,size: 35,color:Color.fromARGB(255, 50, 192, 57) ,),
            ),
            SizedBox(width: 10,),
            Text('Payments',style: GoogleFonts.poppins(fontSize:18),),Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        Divider(
          height: 0.9,
          color: const Color.fromARGB(255, 71, 68, 68),
          thickness: 0.9,
        ),
         Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(CupertinoIcons.cart_fill,size: 35,color:Color.fromARGB(255, 50, 192, 57) ,),
            ),
            SizedBox(width: 10,),
            Text('Cart',style: GoogleFonts.poppins(fontSize:18),),Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
         Divider(
          height: 0.9,
          color: const Color.fromARGB(255, 71, 68, 68),
          thickness: 0.9,
        ),
         Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(CupertinoIcons.italic,size: 35,color:Color.fromARGB(255, 50, 192, 57) ,),
            ),
            SizedBox(width: 10,),
            Text('About Us',style: GoogleFonts.poppins(fontSize:18),),Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],

        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
                      onTap: () {
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
                            'Logout',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 227, 225, 219)),
                          ),
                        ),
                      ),
                    ),
        
      ]),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: GoogleFonts.amiko(color: Colors.black),
        ),
        centerTitle: true,
      ),
    );
  }
}
